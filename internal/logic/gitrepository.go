package logic

import (
	"context"
	"errors"
	"fmt"
	"heimdall/internal/dal/model"
	"heimdall/internal/dal/repositories"
	"heimdall/pkg/function"
	"log"
	"net/url"
	"regexp"
)

type RepositoryLogic struct {
	Repo repositories.IGitRepository
}

func NewRepositoryLogic(gitRepo repositories.IGitRepository) *RepositoryLogic {
	return &RepositoryLogic{
		Repo: gitRepo,
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

	// TODO: push to queue
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
