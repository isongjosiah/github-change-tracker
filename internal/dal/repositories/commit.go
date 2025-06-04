package repositories

import (
	"context"
	"heimdall/internal/dal/model"
)

type IRepositoryCommit interface {
	Add(ctx context.Context, commit []model.Commit) error
	ListByRepoID(ctx context.Context, repoId, lastId, perPage int) ([]model.Commit, error)
	TopAuthors(ctx context.Context, topCount int) ([]model.TopAuthor, error)
}
