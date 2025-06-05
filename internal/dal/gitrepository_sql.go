package dal

import (
	"context"
	"errors"
	"fmt"
	"heimdall/internal/dal/model"
	"heimdall/internal/dal/repositories"
	"log"
	"strings"

	"github.com/uptrace/bun"
)

// GitRepoStorage implements the IGitRepository interface, providing
// database operations for Git repositories using bun ORM.
type GitRepoStorage struct {
	// DB is the bun database client for direct database interactions.
	DB *bun.DB

	// CommitStorage is an interface for accessing commit-related operations.
	// This allows for separation of concerns and easier testing.
	CommitStorage repositories.IRepositoryCommit
}

// NewGitRepoStorage creates and returns a new instance of GitRepoStorage.
// It takes a bun.DB instance and an implementation of IRepositoryCommit.
func NewGitRepoStorage(db *bun.DB, commitStorage repositories.IRepositoryCommit) repositories.IGitRepository {
	return &GitRepoStorage{
		DB:            db,
		CommitStorage: commitStorage,
	}
}

// Add inserts a new repository into the database.
// It returns the created repository with its generated ID and any error encountered.
func (r *GitRepoStorage) Add(ctx context.Context, rep model.Repository) (model.Repository, error) {
	_, err := GetDB(ctx, r.DB).
		NewInsert().
		Returning("*").
		Model(&rep).Exec(ctx)

	return rep, err
}

// GetByURL retrieves a single repository from the database by its URL.
// It can selectively fetch columns if specified, otherwise, it fetches all columns.
func (r *GitRepoStorage) GetByURL(ctx context.Context, url string, forUpdate bool, columns ...string) (model.Repository, error) {
	var repo model.Repository
	query := GetDB(ctx, r.DB).
		NewSelect().
		Model(&repo)
	if len(columns) >= 0 && columns[0] != "" {
		query.Column(columns[0])
	} else {
		query.Column("*")
	}
	query.Where("url = ?", url)
	if forUpdate {
		query.For("UPDATE")
	}

	err := query.Scan(ctx)

	return repo, err
}

// List retrieves a paginated list of repositories from the database.
// It supports cursor pagination using lastId and perPage, and can selectively fetch columns.
func (r *GitRepoStorage) List(ctx context.Context, lastId, perPage int, columns ...string) ([]model.Repository, error) {
	if perPage < 1 {
		perPage = 10
	}

	var repos []model.Repository
	query := GetDB(ctx, r.DB).
		NewSelect().
		Model(&repos).Order("id ASC")
	if len(columns) == 0 {
		query.Column("*")
	} else {
		query.Column(strings.Join(columns, ","))
	}
	if lastId > 0 {
		query.Where("id > ?", lastId)
	}

	err := query.Scan(ctx)

	return repos, err
}

// UpdateFields updates specific fields of an existing repository in the database using a map.
// It identifies the record by its ID and updates only the fields provided in the `updates` map.
// The keys of the map should correspond to the database column names (or struct field names if using default bun mapping).
func (r *GitRepoStorage) Update(ctx context.Context, repoID int, updates map[string]any) error {
	if repoID == 0 {
		return errors.New("repository ID must be provided for update")
	}
	if len(updates) == 0 {
		return errors.New("no fields provided for update")
	}

	db := GetDB(ctx, r.DB)

	updateQuery := db.NewUpdate().
		Model((*model.Repository)(nil)).
		Where("id = ?", repoID)

	// Add fields from the map to the update query
	for col, val := range updates {
		updateQuery.Set(fmt.Sprintf("%s = ?", col), val)
	}

	result, err := updateQuery.Exec(ctx)
	if err != nil {
		log.Printf("Error updating repository %d with fields %v: %v", repoID, updates, err)
		return fmt.Errorf("failed to update repository fields: %w", err)
	}

	rowsAffected, err := result.RowsAffected()
	if err != nil {
		log.Printf("Error getting rows affected for repository %d update: %v", repoID, err)
		return fmt.Errorf("failed to get rows affected: %w", err)
	}

	if rowsAffected == 0 {
		log.Printf("No rows updated for repository ID %d. Repository might not exist.", repoID)
		return errors.New("repository not found or no fields changed")
	}

	return nil
}

// Commits retrieves all commits associated with a given repository name.
// It first fetches the repository ID by name, then uses the CommitStorage
// to list commits for that ID.
func (r *GitRepoStorage) Commits(ctx context.Context, repoName string, lastCommitId, perPage int) ([]model.Commit, error) {
	var repo model.Repository
	err := GetDB(ctx, r.DB).NewSelect().
		Model(&repo).
		Where("name = ?", repoName).
		Column("id").
		Scan(ctx)
	if err != nil {
		return nil, err
	}

	if r.CommitStorage == nil {
		return nil, errors.New("CommitStorage is not initialized")
	}

	return r.CommitStorage.ListByRepoID(ctx, repo.ID, lastCommitId, perPage)
}
