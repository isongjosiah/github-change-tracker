package messagequeue

import (
	"context"
	"encoding/json"
	"fmt"
	"heimdall/internal/config"
	"log"
	"log/slog"
	"runtime/debug"
	"time"

	"github.com/pkg/errors"
	rmq "github.com/rabbitmq/amqp091-go"
)

var RmqConn *rmq.Connection // RmqConn is the connection to the rabbitmq instance
// Connect initiates a connection to the rabbitmq instance
func Connect(config *config.Config) (err error) {
	const maxRetries = 5
	const initialBackoff = 2 * time.Second

	var attempt int
	for {
		RmqConn, err = rmq.Dial(config.RMQUrl)
		if err == nil {
			log.Println("Connected to RabbitMQ")
			return nil
		}

		attempt++
		if attempt >= maxRetries {
			break
		}

		backoff := time.Duration(attempt) * initialBackoff
		log.Printf("Failed to connect to RabbitMQ (attempt %d/%d): %v. Retrying in %s...\n", attempt, maxRetries, err, backoff)
		time.Sleep(backoff)
	}

	return errors.New("failed to connect to RabbitMQ after multiple attempts: " + err.Error())
}

// PublishMessage publishes a message to a queue task
func (rp RMQProducer) PublishMessage(queueName, dlq string, message any) error {
	jsonStr, err := json.Marshal(message)
	if err != nil {
		return err
	}

	ch, err := RmqConn.Channel()
	if err != nil {
		return err
	}

	queue, err := ch.QueueDeclare(queueName, true, false, false, false, nil)
	if err != nil {
		return err
	}

	pubMessage := rmq.Publishing{
		ContentType: "application/json",
		Timestamp:   time.Now().UTC(),
		Body:        jsonStr,
	}

	return ch.PublishWithContext(context.Background(), "", queue.Name, false, false, pubMessage)
}

// Consume consumes messages from the task queue
func (rc RMQConsumer) Consume() {
	ch, err := RmqConn.Channel()
	if err != nil {
		rmq.Logger.Printf("[Queue]: failed to create channel: %v", err.Error())
	}

	queue, err := ch.QueueDeclare(rc.Queue, true, false, false, false, nil)
	if err != nil {
		rmq.Logger.Printf("[Queue]: failed to declare channel: %v", err.Error())
	}

	messages, err := ch.Consume(queue.Name, "", rc.AutoAck, false, false, false, nil)
	if err != nil {
		rmq.Logger.Printf("[Queue]: failed to consume queue: %s | error : %v", rc.Queue, err.Error())
	}

	go func() {
		defer func() {
			r := recover()
			if r != nil {
				s := debug.Stack()
				fmt.Printf("Recovered from panic!\n%+v\nStack Trace -> %s\n", r, string(s))

				var err error
				switch t := r.(type) {
				case string:
					err = errors.New(t)
				case error:
					err = errors.WithStack(t)
				default:
					err = fmt.Errorf("unknown error %v", t)
				}
				log.Println(fmt.Sprintf("[worker."+rc.Queue+"] Panic!! %v", err), slog.LevelError, true)
			}
		}()
		for d := range messages {
			err := rc.MsgHandler(context.Background(), d)
			if err != nil {
				Nack(d)
				continue
			}
			Ack(d)
		}
	}()
}

func Nack(deliver rmq.Delivery) {
	if err := deliver.Nack(false, false); err != nil {
		log.Println("[Nack]: failed to nack delivery message")
	}
}

func Ack(deliver rmq.Delivery) {
	if err := deliver.Ack(false); err != nil {
		log.Println("[Ack]: failed to ack delivery message")
	}
}
