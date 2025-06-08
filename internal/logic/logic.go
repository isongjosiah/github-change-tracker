package logic

import (
	deps "heimdall/internal/deps"
	"heimdall/internal/logger"
	"sync"
)

var (
	logic = new(Logic)
	once  sync.Once
)

type Logic struct {
	Logger     logger.Logger
	Commit     *CommitLogic
	Repository *RepositoryLogic
}

func New(dep *deps.Dependencies) *Logic {
	once.Do(func() {
		logic = &Logic{
			Logger:     dep.Logger,
			Commit:     NewCommitLogic(dep.DAL.Commit, dep.Logger),
			Repository: NewRepositoryLogic(dep.DAL.SqlDB, dep.DAL.GitRepo, dep.DAL.Commit, dep.GitHubService, dep.Producer, dep.Logger),
		}
	})

	return logic
}
