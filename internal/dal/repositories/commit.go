package repositories

//go:generate go run github.com/maxbrunsfeld/counterfeiter/v6 -generate
import (
	"context"
	"heimdall/internal/dal/model"
	"time"
)

//counterfeiter:generate . IRepositoryCommit
type IRepositoryCommit interface {
	Add(ctx context.Context, commit []model.Commit) error
	ListByRepoID(ctx context.Context, repoId, lastId, perPage int) ([]model.Commit, error)
	TopAuthors(ctx context.Context, topCount int) ([]model.TopAuthor, error)
	ResetCommitsFrom(ctx context.Context, repoId int, resetTime time.Time) error
}
