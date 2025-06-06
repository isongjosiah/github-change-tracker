package logic

import (
	"log"

	"github.com/robfig/cron/v3"
)

func InitCron(l *Logic) {
	client := cron.New()
	if _, err := client.AddFunc("@every 1h", l.Repository.ScheduleRepositoryPool); err != nil {
		log.Fatal("Unable to start repository monitoring ", err)
	}
	client.Start()
}
