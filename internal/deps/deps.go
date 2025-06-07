package dep

import (
	"heimdall/internal/config"
	"heimdall/internal/dal"
	"heimdall/internal/logger"
	"heimdall/internal/services/github"
	"heimdall/internal/services/messagequeue"
	"log"
	"sync"
)

var (
	dep  *Dependencies
	once sync.Once
)

// Dependencies struct will contain all the external services and components
// that the application relies on (e.g., database connections, message queues,
// HTTP clients, etc.).
type Dependencies struct {
	DAL           dal.DAL
	GitHubService github.IRepositoryService
	Producer      messagequeue.Producer
	Logger        logger.Logger
}

// New initializes and returns a singleton instance of the application's dependencies.
// It takes a pointer to the application's configuration (`cfg`) as an argument,
// which can be used to set up various dependencies (e.g., database connection string,
// API keys, etc.).
//
// The `sync.Once` mechanism guarantees that the dependency initialization logic
// within the `once.Do` function is executed only once, even if `New` is called
// multiple times concurrently. This ensures that resources like database connections
// are established only once.
//
// Returns a pointer to the initialized Dependencies instance.
func New(cfg *config.Config) *Dependencies {
	once.Do(func() {
		err := messagequeue.Connect(cfg)
		if err != nil {
			log.Fatalf("failed to setup task queue -> %s ", err.Error())
		}
		dep = &Dependencies{
			DAL:           *dal.NewDAL(cfg),
			GitHubService: *github.NewService(cfg),
			Producer:      messagequeue.RMQProducer{},
			Logger:        logger.NewHybridLogger(cfg),
		}
	})

	return dep
}
