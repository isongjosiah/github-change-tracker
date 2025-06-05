package logic

import (
	deps "heimdall/internal/deps"
	"sync"
)

var (
	logic = new(Logic)
	once  sync.Once
)

type Logic struct {
	Commit     *CommitLogic
	Repository *RepositoryLogic
}

func New(dep *deps.Dependencies) *Logic {
	once.Do(func() {
		logic = &Logic{
			Commit:     NewCommitLogic(dep.DAL.Commit),
			Repository: NewRepositoryLogic(dep.DAL.SqlDB, dep.DAL.GitRepo),
		}
	})

	return logic
}
