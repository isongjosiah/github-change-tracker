package logic

import (
	"context"
	"heimdall/internal/config"
	"heimdall/internal/logger"
	"heimdall/internal/services/messagequeue"
	"log"

	"github.com/rabbitmq/amqp091-go"
)

func InitWorkers(l *Logic, config *config.Config) {
	err := messagequeue.Connect(config)
	if err != nil {
		log.Fatal(err)
		return
	}

	processCommitPull(l.Repository.HandleCommitPull, l.Logger)
	processRepositoryAddition(l.Repository.HandleRepositoryAddition, l.Logger)
}

type workerHandler func(ctx context.Context, message amqp091.Delivery) error

func processRepositoryAddition(handler workerHandler, l logger.Logger) {
	(messagequeue.RMQConsumer{
		Queue:      messagequeue.AddRepo,
		MsgHandler: handler,
		Logger:     l,
	}).Consume(4)
}

func processCommitPull(handler workerHandler, l logger.Logger) {
	(messagequeue.RMQConsumer{
		Queue:      messagequeue.PullCommit,
		MsgHandler: handler,
		Logger:     l,
	}).Consume(10)
}
