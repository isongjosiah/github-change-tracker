package repositories

import (
	"context"
	"heimdall/internal/dal/model"
)

//counterfeiter:generate . IGitRepository
type IGitRepository interface {
	Add(ctx context.Context, rep model.Repository) (model.Repository, int64, error)
	GetByURL(ctx context.Context, url string, forUpdate bool, columns ...string) (model.Repository, error)
	List(ctx context.Context, lastId, perPage int, columns ...string) ([]model.Repository, error)
	Update(ctx context.Context, repoId int, updates map[string]any) error
	Commits(ctx context.Context, repoName string, lastCommitId string, perPage int) ([]model.Commit, model.PaginationData, error)
}
