package workers

import (
	"context"
	"encoding/json"
	"fmt"
	"heimdall/internal/config"
	"heimdall/internal/dal/model"
	"heimdall/internal/dal/repositories"
	"heimdall/internal/services/github"
	"log"
	"math/rand"
	"sync"
	"time"

	"github.com/rabbitmq/amqp091-go"
	"github.com/sony/gobreaker"
	"golang.org/x/time/rate"
)

// GitHubFetcher is responsible for fetching commits from GitHub's API.
// It integrates the Rate Limiter pattern to respect API limits and the
// Circuit Breaker pattern to prevent cascading failures during API outages.
// It publishes fetched commits to a RabbitMQ queue.
type GitHubFetcher struct {
	gitHubService github.Service
	repoStorage   repositories.IGitRepository
	// Rate limiter to control API request frequency.
	rateLimiter *rate.Limiter
	// Circuit breaker to manage external service calls.
	circuitBreaker *gobreaker.CircuitBreaker
	// RabbitMQ channel to publish messages.
	// Name of the RabbitMQ queue to publish to.
	queueName string
}

// NewGitHubFetcher creates a new GitHubFetcher instance.
//   - storage: An implementation of RepositoryStorage to manage repository data.
//   - rateLimit: The maximum number of requests per second allowed (e.g., 1.0 for 1 req/sec).
//   - burst: The maximum burst of requests allowed (e.g., 5 allows 5 requests to be sent at once if tokens are available).
//   - amqpChannel: An *already opened* RabbitMQ channel for publishing.
//   - queueName: The name of the RabbitMQ queue where commits will be published.
func NewGitHubFetcher(
	storage repositories.IGitRepository, rateLimit float64, burst int, amqpChannel *amqp091.Channel, queueName string,
) *GitHubFetcher {
	limiter := rate.NewLimiter(rate.Limit(rateLimit), burst)

	// Initialize the circuit breaker using github.com/sony/gobreaker.
	// These settings define when the circuit should open (stop requests) and how it behaves.
	cbSettings := gobreaker.Settings{
		Name:    "GitHubAPI",
		Timeout: 5 * time.Second,
		ReadyToTrip: func(counts gobreaker.Counts) bool {
			failureRatio := float64(counts.TotalFailures) / float64(counts.Requests)
			return counts.Requests >= 10 && failureRatio >= 0.6
		},
		// OnStateChange is a callback function that is executed when the circuit breaker's state changes.
		OnStateChange: func(name string, from gobreaker.State, to gobreaker.State) {
			log.Printf("Circuit Breaker '%s' changed state from %s to %s", name, from, to)
		},
	}
	cb := gobreaker.NewCircuitBreaker(cbSettings)

	return &GitHubFetcher{
		gitHubService:  *github.NewService(&config.Config{}),
		repoStorage:    storage,
		rateLimiter:    limiter,
		circuitBreaker: cb,
		queueName:      queueName,
	}
}

// FetchRepositoryInfo fetches detailed information for a given repository from GitHub.
// This function integrates the rate limiter and circuit breaker to manage external API calls.
// It publishes the fetched repository information to the configured RabbitMQ queue.
func (f *GitHubFetcher) FetchRepositoryInfo(ctx context.Context, repo *model.NewRepository) error {
	if err := f.rateLimiter.Wait(ctx); err != nil {
		return fmt.Errorf("rate limiter wait failed for %s/%s: %w", repo.RepoOwner, repo.RepoName, err)
	}
	log.Printf("Rate limiter passed for fetching info for %s/%s", repo.RepoOwner, repo.RepoName)

	var fetchedRepo *model.Repository
	_, err := f.circuitBreaker.Execute(func() (interface{}, error) {
		log.Printf("Attempting to fetch repository info for %s/%s", repo.RepoOwner, repo.RepoName)

		var getRepoErr error
		fetchedRepo, getRepoErr = f.gitHubService.GetRepository(ctx, repo.RepoOwner, repo.RepoName)
		if getRepoErr != nil {
			log.Printf("GitHub API call failed for %s/%s: %v", repo.RepoOwner, repo.RepoName, getRepoErr)
			return nil, fmt.Errorf("failed to get repository from GitHub API: %w", getRepoErr)
		}

		log.Printf("Successfully fetched info for %s/%s", repo.RepoOwner, repo.RepoName)
		return fetchedRepo, nil // Return the fetched repository and no error
	})
	if err != nil {
		// This error indicates a problem from the circuit breaker (e.g., circuit open)
		// or an underlying failure of the GitHub API call.
		log.Printf("Circuit breaker error or GitHub API error for %s/%s: %v", repo.RepoOwner, repo.RepoName, err)
		return err
	}

	if fetchedRepo == nil {
		return fmt.Errorf("fetched repository is nil after successful circuit breaker execution for %s/%s", repo.RepoOwner, repo.RepoName)
	}

	_, err = f.repoStorage.Add(ctx, *fetchedRepo)
	if err != nil {
	}

	// Publish the repository info message to RabbitMQ.
	log.Printf("Fetched and published repository info for %s/%s to RabbitMQ", fetchedRepo.Owner, fetchedRepo.Name)

	return nil
}

// FetchCommits simulates fetching new commits for a given repository from GitHub.
// This function integrates the rate limiter and circuit breaker to manage external API calls.
// It publishes the fetched commits to the configured RabbitMQ queue.
func (f *GitHubFetcher) FetchCommits(ctx context.Context, repo *model.Repository) error {
	if err := f.rateLimiter.Wait(ctx); err != nil {
		return fmt.Errorf("rate limiter wait failed: %w", err)
	}
	log.Printf("Rate limiter passed for %s/%s", repo.Owner, repo.Name)

	_, err := f.circuitBreaker.Execute(func() (interface{}, error) {
		// Simulate GitHub API call:
		log.Printf("Attempting to fetch commits for %s/%s (last fetched: %s)",
			repo.Owner, repo.Name, repo.LastFetched.Format(time.RFC3339))

		// Simulate network latency for the API call (100-600ms).
		time.Sleep(time.Duration(rand.Intn(500)+100) * time.Millisecond)

		// Simulate transient GitHub API errors (e.g., 20% chance of failure).
		if rand.Intn(100) < 20 {
			log.Printf("Simulating GitHub API error for %s/%s", repo.Owner, repo.Name)
			return nil, fmt.Errorf("simulated GitHub API error for %s/%s", repo.Owner, repo.Name)
		}

		// Simulate fetching 1-3 new commits.
		numNewCommits := rand.Intn(3) + 1
		for i := 0; i < numNewCommits; i++ {
			newCommit := model.Commit{
				Id:      fmt.Sprintf("%x", rand.Int63()), // Generate a random SHA-like ID.
				RepoId:  repo.ID,                         // Link commit to its repository ID.
				Message: fmt.Sprintf("Commit %d for %s/%s", i+1, repo.Owner, repo.Name),
				Author:  "dev_user",
				Date:    time.Now(),
				URL:     fmt.Sprintf("https://github.com/%s/%s/commit/%x", repo.Owner, repo.Name, rand.Int63()),
			}

			// Marshal the Commit object to JSON for sending over RabbitMQ.
			body, err := json.Marshal(newCommit)
			if err != nil {
				log.Printf("Error marshaling commit to JSON: %v", err)
				continue // Skip this commit if marshaling fails.
			}

			// Publish the commit message to RabbitMQ. This is the "Producer" part.
			err = f.amqpChannel.PublishWithContext(
				ctx,         // Context for cancellation.
				"",          // Exchange (default exchange).
				f.queueName, // Routing key (queue name).
				false,       // Mandatory (don't return if no queue).
				false,       // Immediate (don't return if no consumer).
				amqp091.Publishing{
					ContentType: "application/json", // Indicate content type.
					Body:        body,               // The JSON payload.
				})
			if err != nil {
				log.Printf("Failed to publish commit %s to RabbitMQ: %v", newCommit.Id[:6], err)
				// Depending on error, you might want to retry or log more severely.
			} else {
				log.Printf("Fetched and published commit %s for %s to RabbitMQ", newCommit.Id[:6], newCommit.RepoId)
			}
		}

		// Update the LastFetched timestamp in the repository storage.
		// This marks that commits up to this point have been processed.
		repo.LastFetched = time.Now()
		if err := f.storage.UpdateRepository(ctx, repo); err != nil {
			log.Printf("Error updating repository last fetched timestamp: %v", err)
			// This error is internal to our system (storage), not a GitHub API error,
			// so we don't return it to the circuit breaker for state change.
		}

		return nil, nil // No specific return value needed for this simulation.
	})
	if err != nil {
		// This error indicates a problem from the circuit breaker (e.g., circuit open)
		// or an underlying failure of the simulated GitHub API call.
		log.Printf("Circuit breaker error for %s/%s: %v", repo.Owner, repo.Name, err)
		return err
	}
	return nil
}

// StartPolling starts a goroutine that periodically fetches commits for all configured repositories.
// It acts as the orchestrator for the `GitHubFetcher`.
func (f *GitHubFetcher) StartPolling(ctx context.Context, interval time.Duration) {
	ticker := time.NewTicker(interval) // Create a ticker that fires at the specified interval.
	defer ticker.Stop()                // Ensure the ticker is stopped when the function exits.

	for {
		select {
		case <-ctx.Done(): // Check if the main context has been cancelled.
			log.Println("GitHubFetcher polling stopped.")
			return // Exit the polling loop.
		case <-ticker.C: // When the ticker fires.
			repos, err := f.repoStorage.List(ctx, 0, 10, "*") // Get all repositories to poll.
			if err != nil {
				log.Printf("Error getting all repositories for polling: %v", err)
				continue // Continue to the next tick if there's an error.
			}
			for _, repo := range repos {
				// Launch a separate goroutine for each repository's fetch operation.
				// This allows concurrent fetching of commits for different repositories.
				// The rate limiter and circuit breaker will manage the overall API call rate and resilience.
				go func(r *model.Repository) {
					// Use a context with a timeout for each individual fetch operation.
					fetchCtx, cancel := context.WithTimeout(ctx, 10*time.Second)
					defer cancel() // Ensure cancellation of the fetch context.
					if err := f.FetchCommits(fetchCtx, r); err != nil {
						log.Printf("Failed to fetch commits for %s/%s: %v", r.Owner, r.Name, err)
					}
				}(&repo)
			}
		}
	}
}

// StartWorkerPool creates and starts a pool of worker goroutines.
// These workers continuously read commits from the RabbitMQ queue (consumer side)
// and process them using the provided `CommitProcessor`.
func StartWorkerPool(
	ctx context.Context, // Main context for graceful shutdown.
	numWorkers int, // The number of worker goroutines to create.
	amqpChannel *amqp091.Channel, // RabbitMQ channel to consume messages from.
	queueName string, // Name of the RabbitMQ queue to consume from.
	processor CommitProcessor, // The processor implementation to use for commits.
	wg *sync.WaitGroup, // A WaitGroup to track the lifecycle of worker goroutines.
) {
	// Register a consumer for the RabbitMQ queue.
	// This creates a Go channel `msgs` that will receive delivery objects from RabbitMQ.
	msgs, err := amqpChannel.Consume(
		queueName, // Queue name.
		"",        // Consumer tag (empty string generates a unique tag).
		false,     // Auto-ack (set to false for manual acknowledgment).
		false,     // Exclusive (only one consumer on this queue).
		false,     // No-local (don't consume messages published by this connection).
		false,     // No-wait (don't wait for server confirmation).
		nil,       // Arguments.
	)
	failOnError(err, "Failed to register a consumer")
	log.Printf("Registered consumer for queue '%s'. Starting %d workers...", queueName, numWorkers)

	for i := 0; i < numWorkers; i++ {
		wg.Add(1) // Increment the WaitGroup counter for each new worker.
		go func(workerID int) {
			defer wg.Done() // Decrement the WaitGroup counter when the worker goroutine exits.
			log.Printf("Worker %d started.", workerID)
			for {
				select {
				case d, ok := <-msgs: // Receive a delivery from RabbitMQ.
					if !ok {
						// If `ok` is false, the RabbitMQ channel has been closed.
						log.Printf("Worker %d: RabbitMQ channel closed, stopping.", workerID)
						return // Exit the worker goroutine.
					}

					var commit model.Commit
					// Unmarshal the JSON payload from the RabbitMQ message into a Commit struct.
					err := json.Unmarshal(d.Body, &commit)
					if err != nil {
						log.Printf("Worker %d: Error unmarshaling commit from JSON: %v. Message: %s", workerID, err, string(d.Body))
						d.Nack(false, false) // Nack the message, don't requeue (bad message).
						continue
					}

					// Use a context with a timeout for each individual commit processing operation.
					processCtx, cancel := context.WithTimeout(ctx, 5*time.Second)
					if err := processor.ProcessCommit(processCtx, commit); err != nil {
						log.Printf("Worker %d: Error processing commit %s: %v", workerID, commit.Id[:6], err)
						d.Nack(false, true) // Nack the message, requeue for retry.
					} else {
						d.Ack(false) // Acknowledge the message to remove it from the queue.
					}
					cancel() // Release resources associated with this context.
				case <-ctx.Done(): // Check if the main context has been cancelled.
					log.Printf("Worker %d: Context cancelled, stopping.", workerID)
					return // Exit the worker goroutine.
				}
			}
		}(i + 1) // Pass a unique worker ID to the goroutine.
	}
}
