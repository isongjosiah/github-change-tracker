package main

import (
	"heimdall/internal/api/rest"
	"heimdall/internal/config"
	deps "heimdall/internal/deps"
	"log"
	"os"
	"os/signal"
	"syscall"
	"time"

	"go.uber.org/zap"
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

	go func() {
		log.Fatal(restApi.Serve())
	}()

	// graceful shutdown
	stopChan := make(chan os.Signal, 1)
	signal.Notify(stopChan, os.Interrupt, syscall.SIGTERM, syscall.SIGINT)
	<-stopChan

	logger, _ := zap.NewProduction()
	logger.Sugar().Infof("Request to shutdown server. Doing nothing for %v", allowConnectionsAfterShutdown)
	waitTimer := time.NewTimer(allowConnectionsAfterShutdown)
	<-waitTimer.C

	logger.Info("Shutting down server...")
}
