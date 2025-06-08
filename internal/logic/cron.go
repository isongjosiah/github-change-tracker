package logic

import (
	"context"
	"fmt"
	"log"

	"github.com/robfig/cron/v3"
)

func InitCron(l *Logic) {
	client := cron.New()
	if _, err := client.AddFunc("0 * * * *", l.Repository.ScheduleRepositoryPool); err != nil {
		log.Fatal("Unable to start repository monitoring ", err)
		l.Logger.Info(context.Background(), fmt.Sprintf("Unable to start repository monitoring -> %v", err.Error()))
	}
	client.Start()
}
