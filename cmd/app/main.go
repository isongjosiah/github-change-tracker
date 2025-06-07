package main

import (
	"context"
	"fmt"
	"heimdall/internal/api/rest"
	"heimdall/internal/config"
	deps "heimdall/internal/deps"
	"heimdall/internal/logic"
	"log"
	"os"
	"os/signal"
	"syscall"
	"time"
)

const (
	allowConnectionsAfterShutdown = time.Second * 8
)

func main() {
	appConfig := config.LoadConfig()
	appDep := deps.New(appConfig)

	restApi, err := rest.NewAPI(appConfig, appDep)
	if err != nil {
		log.Fatal("failed to setup api -> ", err)
	}

	logic.InitWorkers(restApi.Logic, appConfig)
	logic.InitCron(restApi.Logic)

	go func() {
		log.Fatal(restApi.Serve())
	}()

	// graceful shutdown
	stopChan := make(chan os.Signal, 1)
	signal.Notify(stopChan, os.Interrupt, syscall.SIGTERM, syscall.SIGINT)
	<-stopChan

	appDep.Logger.Info(context.Background(), fmt.Sprintf("Request to shutdown server. Doing nothing for %v", allowConnectionsAfterShutdown))
	waitTimer := time.NewTimer(allowConnectionsAfterShutdown)
	<-waitTimer.C

	appDep.Logger.Info(context.Background(), "Shutting down server...")
}
