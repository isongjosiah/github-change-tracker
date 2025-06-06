package logic

import (
	"context"
	"heimdall/internal/config"
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

	processCommitPull(l.Repository.HandleCommitPull)
	processRepositoryAddition(l.Repository.HandleRepositoryAddition)
}

type workerHandler func(ctx context.Context, message amqp091.Delivery) error

func processRepositoryAddition(handler workerHandler) {
	(messagequeue.RMQConsumer{
		Queue:      messagequeue.AddRepo,
		MsgHandler: handler,
	}).Consume()
}

func processCommitPull(handler workerHandler) {
	(messagequeue.RMQConsumer{
		Queue:      messagequeue.PullCommit,
		MsgHandler: handler,
	}).Consume()
}
