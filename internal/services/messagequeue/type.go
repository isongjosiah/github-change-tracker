package messagequeue

//go:generate go run github.com/maxbrunsfeld/counterfeiter/v6 -generate
import (
	"context"
	"heimdall/internal/logger"

	rmq "github.com/rabbitmq/amqp091-go"
)

//counterfeiter:generate . Producer
type Producer interface {
	PublishMessage(queueName, dlq string, message any) error
}

// RMQProducer represents an instance that is able to publish a message
// to a rabbitmq queue
type RMQProducer struct {
	Queue           string
	DeadLetterQueue string
}

type Consumer interface {
	Consume()
}

// RMQConsumer represents an instance that is able to consume a message
// from a rabbitqm queue
type RMQConsumer struct {
	Queue      string
	MsgHandler func(ctx context.Context, msg rmq.Delivery) error
	AutoAck    bool
	Logger     logger.Logger
}

const (
	AddRepo    string = "add-git-repo"
	PullCommit string = "pull-repo-commits"
)
