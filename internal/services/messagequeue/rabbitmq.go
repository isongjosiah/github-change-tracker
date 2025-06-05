package messagequeue

import (
	"context"
	"encoding/json"
	"fmt"
	"log/slog"
	"sync"
	"time"

	"github.com/pkg/errors"
	amqp "github.com/rabbitmq/amqp091-go"
)

// RabbitMQTaskQueue implements the TaskQueue interface using RabbitMQ
type RabbitMQTaskQueue struct {
	conn   *amqp.Connection
	logger *slog.Logger
	mu     sync.RWMutex
}

// Config holds the configuration for RabbitMQ connection
type Config struct {
	URL string
}

// NewRabbitMQTaskQueue creates a new RabbitMQ task queue instance
func NewRabbitMQTaskQueue(URL string, logger *slog.Logger) (*RabbitMQTaskQueue, error) {
	if logger == nil {
		logger = slog.Default()
	}
	fmt.Println(URL)

	var (
		conn *amqp.Connection
		err  error
	)

	const (
		maxRetries    = 10
		retryInterval = 3 * time.Second
	)

	for attempt := 1; attempt <= maxRetries; attempt++ {
		conn, err = amqp.Dial(URL)
		if err == nil {
			logger.Info("Successfully connected to RabbitMQ", "attempt", attempt)
			break
		}

		logger.Warn("RabbitMQ not ready", "attempt", attempt, "error", err.Error())
		time.Sleep(retryInterval)
	}

	if err != nil {
		return nil, fmt.Errorf("failed to connect to RabbitMQ after %d attempts: %w", maxRetries, err)
	}

	rmq := &RabbitMQTaskQueue{
		conn:   conn,
		logger: logger,
	}

	// Handle connection close events
	go rmq.handleConnectionEvents()

	return rmq, nil
}

// Publish publishes a task to the specified queue
func (r *RabbitMQTaskQueue) Publish(ctx context.Context, queueName string, task Task) error {
	r.mu.RLock()
	conn := r.conn
	r.mu.RUnlock()

	if conn == nil || conn.IsClosed() {
		return errors.New("connection is closed")
	}

	ch, err := conn.Channel()
	if err != nil {
		return fmt.Errorf("failed to open channel: %w", err)
	}
	defer func() {
		if closeErr := ch.Close(); closeErr != nil {
			r.logger.Error("failed to close channel", "error", closeErr)
		}
	}()

	// Declare queue to ensure it exists
	queue, err := ch.QueueDeclare(
		queueName, // name
		true,      // durable
		false,     // delete when unused
		false,     // exclusive
		false,     // no-wait
		nil,       // arguments
	)
	if err != nil {
		return fmt.Errorf("failed to declare queue %s: %w", queueName, err)
	}

	// Marshal task to JSON
	body, err := json.Marshal(task)
	if err != nil {
		return fmt.Errorf("failed to marshal task: %w", err)
	}

	// Create publishing message
	msg := amqp.Publishing{
		ContentType:  "application/json",
		Timestamp:    time.Now().UTC(),
		Body:         body,
		DeliveryMode: amqp.Persistent, // Make message persistent
	}

	// Publish with context
	err = ch.PublishWithContext(
		ctx,
		"",         // exchange
		queue.Name, // routing key
		false,      // mandatory
		false,      // immediate
		msg,
	)
	if err != nil {
		return fmt.Errorf("failed to publish message to queue %s: %w", queueName, err)
	}

	r.logger.Debug("message published successfully", "queue", queueName)
	return nil
}

// Consume sets up a consumer for the specified queue
func (r *RabbitMQTaskQueue) Consume(ctx context.Context, queueName string, consumer func(ctx context.Context, msg amqp.Delivery) error) (<-chan struct{}, error) {
	r.mu.RLock()
	conn := r.conn
	r.mu.RUnlock()

	if conn == nil || conn.IsClosed() {
		return nil, errors.New("connection is closed")
	}

	ch, err := conn.Channel()
	if err != nil {
		return nil, fmt.Errorf("failed to open channel: %w", err)
	}

	// Declare queue to ensure it exists
	queue, err := ch.QueueDeclare(
		queueName, // name
		true,      // durable
		false,     // delete when unused
		false,     // exclusive
		false,     // no-wait
		nil,       // arguments
	)
	if err != nil {
		ch.Close()
		return nil, fmt.Errorf("failed to declare queue %s: %w", queueName, err)
	}

	// Set QoS to process one message at a time
	err = ch.Qos(1, 0, false)
	if err != nil {
		ch.Close()
		return nil, fmt.Errorf("failed to set QoS: %w", err)
	}

	// Start consuming
	msgs, err := ch.Consume(
		queue.Name, // queue
		"",         // consumer
		false,      // auto-ack (we'll manually ack)
		false,      // exclusive
		false,      // no-local
		false,      // no-wait
		nil,        // args
	)
	if err != nil {
		ch.Close()
		return nil, fmt.Errorf("failed to register consumer for queue %s: %w", queueName, err)
	}

	done := make(chan struct{})

	// Start message processing goroutine
	go func() {
		defer func() {
			if closeErr := ch.Close(); closeErr != nil {
				r.logger.Error("failed to close consumer channel", "error", closeErr)
			}
			close(done)
		}()

		r.logger.Info("consumer started", "queue", queueName)

		for {
			select {
			case <-ctx.Done():
				r.logger.Info("consumer stopping due to context cancellation", "queue", queueName)
				return
			case msg, ok := <-msgs:
				if !ok {
					r.logger.Warn("message channel closed", "queue", queueName)
					return
				}

				r.processMessage(ctx, msg, consumer, queueName)
			}
		}
	}()

	return done, nil
}

// processMessage handles individual message processing with proper error handling and recovery
func (r *RabbitMQTaskQueue) processMessage(ctx context.Context, msg amqp.Delivery, consumer func(ctx context.Context, msg amqp.Delivery) error, queueName string) {
	defer func() {
		if rec := recover(); rec != nil {
			var err error
			switch t := rec.(type) {
			case string:
				err = errors.New(t)
			case error:
				err = errors.WithStack(t)
			default:
				err = fmt.Errorf("unknown panic: %v", t)
			}

			r.logger.Error("panic occurred while processing message",
				"queue", queueName,
				"error", err,
				"message_body", string(msg.Body))

			// Nack the message on panic
			if nackErr := msg.Nack(false, true); nackErr != nil {
				r.logger.Error("failed to nack message after panic", "error", nackErr)
			}
		}
	}()

	// Process the message
	if err := consumer(ctx, msg); err != nil {
		r.logger.Error("failed to process message",
			"queue", queueName,
			"error", err,
			"message_body", string(msg.Body))

		// Nack the message and requeue it
		if nackErr := msg.Nack(false, true); nackErr != nil {
			r.logger.Error("failed to nack message", "error", nackErr)
		}
		return
	}

	// Acknowledge successful processing
	if ackErr := msg.Ack(false); ackErr != nil {
		r.logger.Error("failed to ack message", "error", ackErr)
	}
}

// handleConnectionEvents monitors connection events and logs them
func (r *RabbitMQTaskQueue) handleConnectionEvents() {
	closeCh := make(chan *amqp.Error)
	r.conn.NotifyClose(closeCh)

	for closeErr := range closeCh {
		if closeErr != nil {
			r.logger.Error("RabbitMQ connection closed", "error", closeErr)
		} else {
			r.logger.Info("RabbitMQ connection closed gracefully")
		}
	}
}

// Close closes the RabbitMQ connection
func (r *RabbitMQTaskQueue) Close() error {
	r.mu.Lock()
	defer r.mu.Unlock()

	if r.conn != nil && !r.conn.IsClosed() {
		return r.conn.Close()
	}
	return nil
}

// Health check methods

// IsHealthy returns true if the connection is healthy
func (r *RabbitMQTaskQueue) IsHealthy() bool {
	r.mu.RLock()
	defer r.mu.RUnlock()
	return r.conn != nil && !r.conn.IsClosed()
}

// Reconnect attempts to reconnect to RabbitMQ
func (r *RabbitMQTaskQueue) Reconnect(config Config) error {
	r.mu.Lock()
	defer r.mu.Unlock()

	if r.conn != nil && !r.conn.IsClosed() {
		r.conn.Close()
	}

	conn, err := amqp.Dial(config.URL)
	if err != nil {
		return fmt.Errorf("failed to reconnect to RabbitMQ: %w", err)
	}

	r.conn = conn
	go r.handleConnectionEvents()

	r.logger.Info("successfully reconnected to RabbitMQ")
	return nil
}
