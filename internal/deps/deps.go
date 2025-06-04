package dep

import (
	"heimdall/internal/config"
	"sync"
)

var (
	dep  *Dependencies
	once sync.Once
)

// Dependencies struct will contain all the external services and components
// that the application relies on (e.g., database connections, message queues,
// HTTP clients, etc.).
type Dependencies struct{}

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
		dep = &Dependencies{}
	})

	return dep
}
