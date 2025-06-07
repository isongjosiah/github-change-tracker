package logic

import (
	"context"
	"database/sql"
	"encoding/json"
	"fmt"
	"heimdall/internal/dal"
	"heimdall/internal/dal/model"
	"heimdall/internal/dal/repositories"
	"heimdall/internal/logger"
	"heimdall/internal/services/github"
	"heimdall/internal/services/messagequeue"
	value "heimdall/internal/values"
	"heimdall/pkg/function"
	"log"
	"log/slog"
	"net/url"
	"regexp"
	"sync"
	"time"

	"github.com/pkg/errors"

	"github.com/lucsky/cuid"
	"github.com/rabbitmq/amqp091-go"
	"github.com/uptrace/bun"
)

type RepositoryLogic struct {
	DB            *bun.DB
	Repo          repositories.IGitRepository
	Commit        repositories.IRepositoryCommit
	GitHubService github.IRepositoryService
	Publisher     messagequeue.Producer
	Logger        logger.Logger
}

func NewRepositoryLogic(db *bun.DB, gitRepo repositories.IGitRepository, commitRepo repositories.IRepositoryCommit, githubService github.IRepositoryService, publisher messagequeue.Producer, logger logger.Logger) *RepositoryLogic {
	return &RepositoryLogic{
		DB:            db,
		Repo:          gitRepo,
		Commit:        commitRepo,
		GitHubService: githubService,
		Publisher:     publisher,
		Logger:        logger,
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

	repository, err := r.Repo.GetByURL(ctx, repo.URL, false)
	if err != nil && !errors.Is(err, sql.ErrNoRows) {
		return value.Error, "Something went wrong. Please try again", errors.Wrap(err, "Failed to check for repository existence")
	}
	if repository.ID != 0 {
		return value.NotAllowed, "Repository already added. Pull commits instead", errors.New("Repository already added. Pull commits instead")
	}

	err = r.Publisher.PublishMessage(messagequeue.AddRepo, "", repo)
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
func (r *RepositoryLogic) ListCommitsByRepositoryName(ctx context.Context, query url.Values) (map[string]any, string, string, error) {
	// 1. Validate repository name presence
	repoName := query.Get("repo-name")
	repoOwner := query.Get("repo-owner")
	if repoName == "" || repoOwner == "" {
		return nil, value.BadRequest, "Repository name and owner must be provided", errors.New("repository name and owner must be provided")
	}

	lastCommitId := query.Get("last-commit-id")
	perPage := function.StringToInt(query.Get("limit"))

	repo, err := r.Repo.GetByURL(ctx, fmt.Sprintf("https://github.com/%s/%s", repoOwner, repoName), false)
	if err != nil {
		if errors.Is(err, sql.ErrNoRows) {
			return nil, value.NotFound, "Repository does not exist", errors.Wrap(err, "repository does not exist")
		}

		return nil, value.Error, "Something went wrong. Please try again", errors.Wrap(err, "unable to retrieve repository")
	}

	commits, pagination, err := r.Repo.Commits(ctx, repo.Name, lastCommitId, perPage)
	if err != nil {
		log.Printf("ERROR: RepositoryLogic.ListCommitsByRepositoryName - failed to retrieve commits for repo '%s': %v", repoName, err)
		// Wrap the error to add context from the business logic layer.
		return nil, value.Error, "Something went wrong. Please try again", errors.Wrap(err, fmt.Sprintf("could not retrieve commits for repository '%s'", repoName))
	}

	payload := map[string]any{
		"commits":    commits,
		"pagination": pagination,
	}

	return payload, value.Success, value.Success, nil
}

func (r *RepositoryLogic) HandleRepositoryAddition(ctx context.Context, delivery amqp091.Delivery) error {
	var repo model.NewRepository
	err := json.Unmarshal(delivery.Body, &repo)
	if err != nil {
		slog.Info(fmt.Sprintf("Failed to Unmarshal task -> %s", err.Error()))
		return errors.Wrap(err, "Failed to parse task message for adding new repositories")
	}
	if repo.URL == "" {
		repo.URL = fmt.Sprintf("https://github.com/%s/%s", repo.RepoOwner, repo.RepoName)
	}

	repository, err := r.Repo.GetByURL(ctx, repo.URL, false, "id")
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

		err = r.Publisher.PublishMessage(messagequeue.PullCommit, "", repo.PullCommitTask())

		return err
	})
	return err
}

var mu sync.Mutex

func (r *RepositoryLogic) ScheduleRepositoryPool() {
	mu.Lock()
	defer mu.Unlock()

	fmt.Println("running repository pooling job")
	lastId := 0
	perPage := 10
	ctx := context.Background()

	for {
		repos, err := r.Repo.List(ctx, lastId, perPage)
		if err != nil {
			// TODO: log error with lastId and perPage detail
			continue
		}
		if repos == nil {
			break
		}
		fmt.Println("repos is ->", repos)
		for _, repo := range repos {
			err := r.Publisher.PublishMessage(messagequeue.PullCommit, "", repo.PullCommitTask())
			if err != nil {
				continue
			}
			lastId = repo.ID
		}

	}
}

// handleCommitPull processes a commit pull job from the message queue.
// It fetches commits from GitHub, transforms them, and stores them in the database.
// It also updates the repository's last fetched timestamp.
func (r *RepositoryLogic) HandleCommitPull(ctx context.Context, delivery amqp091.Delivery) error {
	var repo model.CommitPullJob
	err := json.Unmarshal(delivery.Body, &repo)
	if err != nil {
		fmt.Println("failed to handle commit pulls ->", err.Error())
		return err
	}

	commits, link, err := r.GitHubService.ListCommit(ctx, repo.RepoOwner, repo.RepoName, repo.LastFetched, "")
	if err != nil {
		fmt.Println("failed to retrieve commits ->", err.Error())
		return err
	}
	parsedLink, err := github.ParseLinkHeader(link)
	if err != nil {
		return err
	}

	// if there is no last page. There is only one page.
	// handle that
	if _, ok := parsedLink["last"]; !ok {
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

		err := r.DB.RunInTx(ctx, &sql.TxOptions{}, func(ctx context.Context, tx bun.Tx) error {
			ctx = dal.WithTx(ctx, tx)
			if err := r.Commit.Add(ctx, newCommit); err != nil {
				return err
			}
			err := r.Repo.Update(ctx, repo.Id, map[string]any{
				"last_fetched": newCommit[0].Date,
			})
			return err
		})
		return err
	}

	link = parsedLink["last"].URL

	// start from the last page because github is sorted in descending order
	for link != "" {

		commits, newLink, err := r.GitHubService.ListCommit(ctx, repo.RepoOwner, repo.RepoName, time.Time{}, link)
		if err != nil {
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

		parsedLink, err := github.ParseLinkHeader(newLink)
		if err != nil {
			return err
		}
		fmt.Println(parsedLink)
		if _, ok := parsedLink["prev"]; !ok {
			break
		}

		link = parsedLink["prev"].URL

	}

	return nil
}

func (r *RepositoryLogic) ResetCommitFromDate(ctx context.Context, payload model.ResetCommitReq) (string, string, error) {
	if payload.RepoName == "" {
		return value.BadRequest, "Repository name is required", errors.New("repository name is required")
	}
	if payload.ResetFrom.IsZero() {
		return value.BadRequest, "Reset date must be provided", errors.New("reset date must be provided")
	}

	msg := fmt.Sprintf("%s/%s commit reset successful", payload.RepoOwner, payload.RepoName)
	status := value.Success
	err := r.DB.RunInTx(ctx, &sql.TxOptions{}, func(ctx context.Context, tx bun.Tx) error {
		ctx = dal.WithTx(ctx, tx)
		repo, err := r.Repo.GetByURL(ctx, fmt.Sprintf("https://github.com/%s/%s", payload.RepoOwner, payload.RepoName), true)
		if err != nil {
			if errors.Is(err, sql.ErrNoRows) {
				status = value.NotFound
				msg = fmt.Sprintf("Repository %s/%s does not exist", payload.RepoOwner, payload.RepoName)
				return err
			}
			status = value.Error
			msg = "Something went wrong. Pleasse try again"
			return err
		}

		if err := r.Commit.ResetCommitsFrom(ctx, repo.ID, payload.ResetFrom); err != nil {
			status = value.Error
			msg = "Somethign went wrong. Please try again"
			return errors.Wrap(err, "Failed to reset commit for repository")
		}

		err = r.Repo.Update(ctx, repo.ID, map[string]any{
			"last_fetched": payload.ResetFrom,
		})
		if err != nil {
			status = value.Error
			msg = "Somethign went wrong. Please try again"
			return errors.Wrap(err, "Failed to update commit for repository")
		}
		return nil
	})

	return status, msg, err
}
