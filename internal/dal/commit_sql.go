package dal

import (
	"context"
	"database/sql"
	"errors"
	"fmt"
	"heimdall/internal/dal/model"
	"heimdall/internal/dal/repositories"
	"strconv"
	"time"

	"github.com/uptrace/bun"
)

// RepositoryCommitStorage implements the IRepositoryCommit interface, providing
// database operations for Git commits using the bun ORM.
type RepositoryCommitStorage struct {
	DB *bun.DB
}

// NewRepositoryCommitStorage creates and returns a new instance of RepositoryCommitStorage.
// It takes a bun.DB instance which will be used for all database operations.
func NewRepositoryCommitStorage(db *bun.DB) repositories.IRepositoryCommit {
	return &RepositoryCommitStorage{
		DB: db,
	}
}

// Add inserts a slice of new commits into the database.
// This method performs a bulk insert for efficiency given we are fetching
// commits in bulk
func (r *RepositoryCommitStorage) Add(ctx context.Context, commits []model.Commit) error {
	if len(commits) == 0 {
		return nil
	}

	_, err := GetDB(ctx, r.DB).
		NewInsert().
		Model(&commits).
		Exec(ctx)

	return err
}

// ListByRepoID retrieves a paginated list of commits for a specific repository ID.
// It uses `lastId` for cursor-based pagination and `perPage` to limit the number of results.
func (r *RepositoryCommitStorage) ListByRepoID(ctx context.Context, repoId, lastId, perPage int) ([]model.Commit, error) {
	if perPage < 1 {
		perPage = 10
	}

	var commits []model.Commit
	query := GetDB(ctx, r.DB).
		NewSelect().
		Model(&commits).
		Where("repo_id = ?", repoId).
		Order("id ASC").
		Limit(perPage)

	if lastId > 0 {
		query.Where("id > ?", lastId)
	}

	err := query.Scan(ctx)

	return commits, err
}

// TopAuthors retrieves a list of top authors based on their commit count,
// including the repository name for each commit.
// The `topCount` parameter limits the number of author-repository pairs returned.
//
// This implementation groups commits by author and repository, counts them,
// and orders them by commit count in descending order.
// TODO: optimize impelementation
func (r *RepositoryCommitStorage) TopAuthors(ctx context.Context, topCount int) ([]model.TopAuthor, error) {
	if topCount < 1 {
		topCount = 10
	}

	var results []struct {
		AuthorName string `bun:"author_name"`
		RepoID     int64  `bun:"repo_id"`
		Count      int    `bun:"count"`
	}

	err := GetDB(ctx, r.DB).
		NewSelect().
		Table("commits").
		ColumnExpr("commits.author, commits.repo_id, COUNT(*) AS count").
		Join("JOIN repositories ON repositories.id = commits.repo_id").
		Group("commits.author", "commits.repo_id").
		Order("count DESC").
		Limit(topCount).
		Scan(ctx, &results)
	if err != nil {
		if errors.Is(err, sql.ErrNoRows) {
			return nil, nil // No results, return an empty slice
		}
		return nil, fmt.Errorf("failed to retrieve top authors: %w", err)
	}

	// Map the results to the desired TopAuthors struct.
	var topAuthorsList []model.TopAuthor

	var topAuthorQueryResults []struct {
		AuthorName string `bun:"author"`
		RepoName   string `bun:"repo_name"`
		Count      int    `bun:"count"`
	}

	err = GetDB(ctx, r.DB).
		NewSelect().
		Table("commits").
		ColumnExpr("commits.author, repositories.name AS repo_name, COUNT(*) AS count").
		Join("JOIN repositories ON repositories.id = commits.repo_id").
		Group("commits.author", "repositories.name").
		Order("count DESC").
		Limit(topCount).
		Scan(ctx, &topAuthorQueryResults)
	if err != nil {
		if errors.Is(err, sql.ErrNoRows) {
			return nil, nil
		}
		return nil, fmt.Errorf("failed to retrieve top authors: %w", err)
	}

	topAuthorsList = make([]model.TopAuthor, 0, len(topAuthorQueryResults))
	for _, res := range topAuthorQueryResults {
		topAuthorsList = append(topAuthorsList, model.TopAuthor{
			Author:      res.AuthorName,
			RepoName:    res.RepoName,
			CommitCount: strconv.Itoa(res.Count),
		})
	}

	return topAuthorsList, nil
}

// ResetCommitsFrom deletes all commits for a given repository that occurred on or after a specified time.
// This is typically used to re-sync commit history from a certain point.
//
// Parameters:
//
//	ctx:        The context for the database operation (e.g., for cancellation or timeouts).
//	repoId:     The unique identifier of the repository whose commits are to be reset.
//	resetTime:  The timestamp from which commits should be deleted (inclusive).
//
// Returns:
//
//	error: An error if the database operation fails, otherwise nil.
func (r *RepositoryCommitStorage) ResetCommitsFrom(ctx context.Context, repoId int, resetTime time.Time) error {
	var repo model.Commit
	_, err := GetDB(ctx, r.DB).
		NewDelete().
		Model(&repo).
		Where("repo_id = ?", repoId).
		Where("date >= ?", resetTime).
		Exec(context.Background())
	return err
}
