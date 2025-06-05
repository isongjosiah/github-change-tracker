package logic

import (
	"context"
	"database/sql"
	"encoding/json"
	"fmt"
	"heimdall/internal/dal"
	"heimdall/internal/dal/model"
	"heimdall/internal/dal/repositories"
	"heimdall/internal/services/github"
	"heimdall/internal/services/messagequeue"
	value "heimdall/internal/values"
	"heimdall/pkg/function"
	"log"
	"log/slog"
	"net/url"
	"regexp"

	"github.com/pkg/errors"

	"github.com/lucsky/cuid"
	"github.com/rabbitmq/amqp091-go"
	"github.com/uptrace/bun"
)

type RepositoryLogic struct {
	DB            *bun.DB
	Repo          repositories.IGitRepository
	Commit        repositories.IRepositoryCommit
	GitHubService github.Service
}

func NewRepositoryLogic(db *bun.DB, gitRepo repositories.IGitRepository, commitRepo repositories.IRepositoryCommit, githubService github.Service) *RepositoryLogic {
	return &RepositoryLogic{
		DB:            db,
		Repo:          gitRepo,
		Commit:        commitRepo,
		GitHubService: githubService,
	}
}

func isValidGithubRepoURL(url string) bool {
	githubRepoRegex := regexp.MustCompile(`^(?:https?://|git@)?github\.com[:/]([a-zA-Z0-9-]+)/([a-zA-Z0-9_.-]+)(?:\.git)?/?$`)
	matches := githubRepoRegex.FindStringSubmatch(url)
	if len(matches) < 3 { // Expected groups: full match + owner + repo
		return false
	}
	return true // matches[1] is owner, matches[2] is repo
}

// Create handles the process of adding a new repository.
// It validates the input, constructs a GitHub URL if not provided,
// checks for existing repositories, and publishes the repository details
// to a message queue for further processing (e.g., pulling commits).
//
// Parameters:
//
//	ctx context.Context: The context for the operation.
//	repo model.NewRepository: The details of the new repository to be added.
//
// Returns:
//
//	string: A status code indicating the outcome (e.g., value.Success, value.BadRequest, value.Error, value.NotAllowed).
//	string: A user-friendly message describing the outcome.
//	error: An error object if any unexpected issue occurs, providing more technical details.
func (r *RepositoryLogic) Create(ctx context.Context, repo model.NewRepository) (string, string, error) {
	if repo.URL == "" && repo.RepoName == "" && repo.RepoOwner == "" {
		return value.BadRequest, "Repository URL or Owner and Name must be provided", errors.New("repository URL or owner and name must be provided")
	}

	if repo.URL != "" && !isValidGithubRepoURL(repo.URL) {
		return value.BadRequest, "Invalid repository URL provided", errors.New("Invalid repository URL provided")
	}

	if repo.URL == "" {
		repo.URL = fmt.Sprintf("https://github.com/%s/%s", repo.RepoOwner, repo.RepoName)
	}

	repository, err := r.Repo.GetByURL(ctx, repo.URL)
	if err != nil && !errors.Is(err, sql.ErrNoRows) {
		return value.Error, "Something went wrong. Please try again", errors.Wrap(err, "Failed to check for repository existence")
	}
	if repository.ID != 0 {
		return value.NotAllowed, "Repository already added. Pull commits instead", errors.New("Repository already added. Pull commits instead")
	}

	err = (messagequeue.RMQProducer{
		Queue: messagequeue.AddRepo,
	}).PublishMessage(repo)
	if err != nil {
		return value.Error, "Something went wrong. Please try again", errors.Wrap(err, "Failed to push new repository details to queue")
	}

	return value.Success, "Repository detail and commits are being pulled", nil
}

// ListCommitsByRepositoryName retrieves all commits associated with a given repository name.
// It orchestrates by first validating the input and then delegating to the
// underlying repository storage.
//
// Parameters:
//
//	ctx:      The context for the operation.
//	repoName: The name of the repository for which to retrieve commits.
//	          This typically corresponds to the `Name` field in `model.Repository`.
//
// Returns:
//
//	A slice of `model.Commit` structs, representing the commits found for the repository.
//	An error if the repository name is invalid or if the data retrieval fails.
func (r *RepositoryLogic) ListCommitsByRepositoryName(ctx context.Context, query url.Values) ([]model.Commit, error) {
	// 1. Validate repository name presence
	repoName := query.Get("repo-name")
	if repoName == "" {
		return nil, errors.New("repository name must be provided")
	}

	lastCommitId := function.StringToInt(query.Get("last-commit-id"))
	perPage := function.StringToInt(query.Get("limit"))

	// 2. Delegate the call to the IGitRepository's Commits method.
	// This method in GitRepoStorage is assumed to handle finding the repo ID
	// and then fetching commits using the IRepositoryCommit dependency.
	commits, err := r.Repo.Commits(ctx, repoName, lastCommitId, perPage)
	if err != nil {
		log.Printf("ERROR: RepositoryLogic.ListCommitsByRepositoryName - failed to retrieve commits for repo '%s': %v", repoName, err)
		// Wrap the error to add context from the business logic layer.
		return nil, fmt.Errorf("could not retrieve commits for repository '%s': %w", repoName, err)
	}

	return commits, nil
}

func (r *RepositoryLogic) handleRepositoryAddition(ctx context.Context, delivery amqp091.Delivery) error {
	var repo model.NewRepository
	err := json.Unmarshal(delivery.Body, &repo)
	if err != nil {
		slog.Info(fmt.Sprintf("Failed to Unmarshal task -> %s", err.Error()))
		return errors.Wrap(err, "Failed to parse task message for adding new repositories")
	}
	if repo.URL == "" {
		repo.URL = fmt.Sprintf("https://github.com/%s/%s", repo.RepoOwner, repo.RepoName)
	}

	repository, err := r.Repo.GetByURL(ctx, repo.URL, "id")
	if err != nil && !errors.Is(err, sql.ErrNoRows) {
		return errors.Wrap(err, "Failed to check if repository exist")
	}
	if repository.ID != 0 { // repository already exist
		return nil
	}

	err = r.DB.RunInTx(ctx, &sql.TxOptions{}, func(ctx context.Context, tx bun.Tx) error {
		ctx = dal.WithTx(ctx, tx)

		gitRepo, err := r.GitHubService.GetRepository(ctx, repo.RepoOwner, repo.RepoName)
		if err != nil {
			return errors.Wrap(err, "Failed to retrieve detail for gitHub repository "+repo.URL)
		}

		repo, err := r.Repo.Add(ctx, *gitRepo)
		if err != nil {
			return errors.Wrap(err, "Failed to add repository to DB")
		}
		fmt.Println(repo)

		err = (messagequeue.RMQProducer{
			Queue: messagequeue.PullCommit,
		}).PublishMessage(repo.PullCommitTask())

		return err
	})
	return err
}

func (r *RepositoryLogic) scheduleRepositoryPool() {
	lastId := 0
	perPage := 10
	ctx := context.Background()

	for {
		repos, err := r.Repo.List(ctx, lastId, perPage, "*")
		if err != nil {
			// TODO: log error with lastId and perPage detail
			continue
		}
		if repos == nil {
			break
		}
		payload, err := model.Repositories(repos).ScheduleCommitPullTask().Payload()
		if err != nil {
			continue
		}
		err = (messagequeue.RMQProducer{
			Queue: messagequeue.PullCommit,
		}).PublishMessage(payload)
		if err != nil {
			continue
		}

		lastId = repos[len(repos)-1].ID
	}
}

// handleCommitPull processes a commit pull job from the message queue.
// It fetches commits from GitHub, transforms them, and stores them in the database.
// It also updates the repository's last fetched timestamp.
func (r *RepositoryLogic) handleCommitPull(ctx context.Context, delivery amqp091.Delivery) error {
	var repo model.CommitPullJob
	err := json.Unmarshal(delivery.Body, &repo)
	if err != nil {
		fmt.Println("failed to handle commit pulls ->", err.Error())
		return err
	}

	commits, link, err := r.GitHubService.ListCommit(repo.RepoOwner, repo.RepoName, repo.LastFetched, "")
	if err != nil {
		fmt.Println("failed to retrieve commits ->", err.Error())
		return err
	}

	newCommit := make([]model.Commit, 0)
	for _, commit := range commits {
		newCommit = append(newCommit, model.Commit{
			Id:      cuid.New(),
			RepoId:  repo.Id,
			Message: commit.Commit.Message,
			Author:  commit.Commit.Author.Name,
			Date:    commit.Commit.Committer.Date,
			URL:     commit.Commit.URL,
		})
	}

	err = r.DB.RunInTx(ctx, &sql.TxOptions{}, func(ctx context.Context, tx bun.Tx) error {
		ctx = dal.WithTx(ctx, tx)
		if err := r.Commit.Add(ctx, newCommit); err != nil {
			return err
		}
		fmt.Println("persisted commits")

		err := r.Repo.Update(ctx, repo.Id, map[string]any{
			"last_fetched": newCommit[len(newCommit)-1].Date,
		})
		return err
	})
	if err != nil {
		fmt.Println("failed to persist data -> ", err)
		return err
	}

	for link != "" {
		parsedLink, err := github.ParseLinkHeader(link)
		if err != nil {
			return err
		}

		commits, newLink, err := r.GitHubService.ListCommit(repo.RepoOwner, repo.RepoName, repo.LastFetched, parsedLink["next"].URL)
		if err != nil {
			return err
		}
		link = newLink

		newCommit := make([]model.Commit, 0)
		for _, commit := range commits {
			newCommit = append(newCommit, model.Commit{
				Id:      cuid.New(),
				RepoId:  repo.Id,
				Message: commit.Commit.Message,
				Author:  commit.Commit.Author.Name,
				Date:    commit.Commit.Committer.Date,
				URL:     commit.Commit.URL,
			})
		}

		r.DB.RunInTx(ctx, &sql.TxOptions{}, func(ctx context.Context, tx bun.Tx) error {
			ctx = dal.WithTx(ctx, tx)
			if err := r.Commit.Add(ctx, newCommit); err != nil {
				return err
			}
			err := r.Repo.Update(ctx, repo.Id, map[string]any{
				"last_fetched": newCommit[0].Date,
			})
			return err
		})

	}

	return nil
}
