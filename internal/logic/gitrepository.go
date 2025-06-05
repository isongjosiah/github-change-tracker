package logic

import (
	"context"
	"database/sql"
	"encoding/json"
	"errors"
	"fmt"
	"heimdall/internal/dal"
	"heimdall/internal/dal/model"
	"heimdall/internal/dal/repositories"
	"heimdall/internal/services/github"
	"heimdall/internal/services/messagequeue"
	"heimdall/pkg/function"
	"log"
	"net/url"
	"regexp"

	"github.com/lucsky/cuid"
	"github.com/rabbitmq/amqp091-go"
	"github.com/uptrace/bun"
)

type RepositoryLogic struct {
	DB            *bun.DB
	Repo          repositories.IGitRepository
	Commit        repositories.IRepositoryCommit
	GitHubService github.Service
	Queue         messagequeue.TaskQueue
}

func NewRepositoryLogic(db *bun.DB, messageQueue messagequeue.TaskQueue, gitRepo repositories.IGitRepository) *RepositoryLogic {
	return &RepositoryLogic{
		DB:    db,
		Repo:  gitRepo,
		Queue: messageQueue,
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

func (r *RepositoryLogic) Create(ctx context.Context, repo model.NewRepository) error {
	if repo.URL == "" {
		return errors.New("repository URL must be provided")
	}
	if !isValidGithubRepoURL(repo.URL) {
		return errors.New("invalid repository URL provided")
	}

	if err := r.Queue.Publish(ctx, "git-repo", repo); err != nil {
		return errors.New("failed to publish queue")
	}

	return nil
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
	fmt.Println("Adding repository")
	// parse data
	var repo model.NewRepository
	err := json.Unmarshal(delivery.Body, &repo)
	if err != nil {
		return err
	}
	fmt.Println("repo ->", repo)

	err = r.DB.RunInTx(ctx, &sql.TxOptions{}, func(ctx context.Context, tx bun.Tx) error {
		ctx = dal.WithTx(ctx, tx)

		gitRepo, err := r.GitHubService.GetRepository(ctx, repo.RepoOwner, repo.RepoName)
		if err != nil {
			return err
		}
		fmt.Println("fetched repository")

		repo, err := r.Repo.Add(ctx, *gitRepo)
		if err != nil {
			return err
		}
		fmt.Println("added repository")

		if err := r.Queue.Publish(ctx, messagequeue.PullCommit, repo.PullCommitTask()); err != nil {
			return err
		}
		fmt.Println("publish repository commit task")

		return nil
	})
	fmt.Println("error adding repository -> ", err)
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

		if err := r.Queue.Publish(ctx, "pull-commit", model.Repositories(repos).ScheduleCommitPullTask()); err != nil {
			continue
		}

		lastId = repos[len(repos)-1].ID
	}
}

// handleCommitPull processes a commit pull job from the message queue.
// It fetches commits from GitHub, transforms them, and stores them in the database.
// It also updates the repository's last fetched timestamp.
func (r *RepositoryLogic) handleCommitPull(ctx context.Context, delivery amqp091.Delivery) error {
	// parse data
	var repo model.CommitPullJob
	err := json.Unmarshal(delivery.Body, &repo)
	if err != nil {
		return err
	}

	commits, link, err := r.GitHubService.ListCommit(repo.RepoOwner, repo.RepoName, repo.LastFetched, "")
	if err != nil {
		return err
	}

	newCommit := make([]model.Commit, len(commits))
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
			"last_fetched": newCommit[len(newCommit)-1].Date,
		})
		return err
	})

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

		newCommit := make([]model.Commit, len(commits))
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
				"last_fetched": newCommit[len(newCommit)-1].Date,
			})
			return err
		})

	}

	return nil
}
