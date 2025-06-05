package messagequeue

import (
	"context"

	amqp "github.com/rabbitmq/amqp091-go"
)

type Task interface {
	Type() string
	Payload() ([]byte, error)
}

type TaskQueue interface {
	// Publish publishes a task to the queue.
	Publish(ctx context.Context, queueName string, task Task) error

	// Consume sets up a consumer to receive tasks from the queue.
	// The consumer function will be called for each received task.
	// The 'done' channel will be closed when the consumer stops.
	Consume(ctx context.Context, queueName string, consumer func(ctx context.Context, msg amqp.Delivery) error) (<-chan struct{}, error)
}
