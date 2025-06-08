package tests

import (
	"context"
	"fmt"
	"heimdall/internal/api/rest"
	"heimdall/internal/config"
	"heimdall/internal/dal"
	"heimdall/internal/dal/model"
	"heimdall/internal/dal/repositories/repositoriesfakes"
	dep "heimdall/internal/deps"
	"heimdall/internal/logger/loggerfakes"
	"heimdall/internal/logic"
	"heimdall/internal/services/github"
	"heimdall/internal/services/github/githubfakes"
	"heimdall/internal/services/messagequeue/messagequeuefakes"
	"net/http"
	"os"
	"testing"
	"time"

	"github.com/rabbitmq/amqp091-go"

	"github.com/DATA-DOG/go-sqlmock"
	"github.com/uptrace/bun"
	"github.com/uptrace/bun/dialect/pgdialect"
	"gotest.tools/assert"
)

var (
	restApi *rest.API

	commitDal     *repositoriesfakes.FakeIRepositoryCommit
	repositoryDal *repositoriesfakes.FakeIGitRepository

	githubService *githubfakes.FakeIRepositoryService
	producer      *messagequeuefakes.FakeProducer
	logger        *loggerfakes.FakeLogger

	dependencies  *dep.Dependencies
	serverHandler http.Handler

	dbMock sqlmock.Sqlmock
)

func TestMain(m *testing.M) {
	db, mock, err := sqlmock.New()
	if err != nil {
		fmt.Print("error setting up mock database", err)
		os.Exit(1)
	}

	dbMock = mock
	commitDal = &repositoriesfakes.FakeIRepositoryCommit{}
	repositoryDal = &repositoriesfakes.FakeIGitRepository{}
	githubService = &githubfakes.FakeIRepositoryService{}
	producer = &messagequeuefakes.FakeProducer{}
	logger = &loggerfakes.FakeLogger{}

	dependencies = &dep.Dependencies{
		DAL: dal.DAL{
			SqlDB:   bun.NewDB(db, pgdialect.New()),
			Commit:  commitDal,
			GitRepo: repositoryDal,
		},
		GitHubService: githubService,
		Producer:      producer,
		Logger:        logger,
	}

	restApi = &rest.API{
		Config: &config.Config{
			GithubToken: "fakeToken",
		},
		Deps:  dependencies,
		Logic: logic.New(dependencies),
	}

	serverHandler = restApi.SetupServerHandler()
	os.Exit(m.Run())
}

func TestCommitPollingScheduler(t *testing.T) {
	databaseRepoRes := []model.Repository{
		{
			ID:          1,
			Owner:       "octocat",
			Name:        "hello-world",
			URL:         "https://github.com/octocat/hello-world",
			LastFetched: time.Now().Add(-24 * time.Hour),
			CreatedAt:   time.Now().Add(-72 * time.Hour),
			UpdatedAt:   time.Now(),
		},
		{
			ID:          2,
			Owner:       "openai",
			Name:        "gpt-codebase",
			URL:         "https://github.com/openai/gpt-codebase",
			LastFetched: time.Now().Add(-6 * time.Hour),
			CreatedAt:   time.Now().Add(-48 * time.Hour),
			UpdatedAt:   time.Now(),
		},
	}

	repositoryDal.ListReturnsOnCall(0, databaseRepoRes, nil)
	repositoryDal.ListReturnsOnCall(1, nil, nil)

	restApi.Logic.Repository.ScheduleRepositoryPool()
	assert.Equal(t, 2, repositoryDal.ListCallCount())
	assert.Equal(t, 2, producer.PublishMessageCallCount())
}

func TestCommitPollingWorker(t *testing.T) {
	listCommitResponse := []github.Commit{
		{
			URL:         "https://api.github.com/repos/user/repo/commits/1",
			SHA:         "sha1",
			CommentsURL: "https://api.github.com/repos/user/repo/commits/1/comments",
			Commit: struct {
				URL    string `json:"url"`
				Author struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				} `json:"author"`
				Committer struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				} `json:"committer"`
				Message      string `json:"message"`
				CommentCount int    `json:"comment_count"`
			}{
				URL: "https://api.github.com/repos/user/repo/git/commits/1",
				Author: struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				}{
					Name:  "Author1",
					Email: "author1@example.com",
					Date:  time.Now().AddDate(0, 0, -1),
				},
				Committer: struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				}{
					Name:  "Committer1",
					Email: "committer1@example.com",
					Date:  time.Now().AddDate(0, 0, -1),
				},
				Message:      "Commit message 1",
				CommentCount: 10,
			},
		},
		{
			URL:         "https://api.github.com/repos/user/repo/commits/2",
			SHA:         "sha2",
			CommentsURL: "https://api.github.com/repos/user/repo/commits/2/comments",
			Commit: struct {
				URL    string `json:"url"`
				Author struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				} `json:"author"`
				Committer struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				} `json:"committer"`
				Message      string `json:"message"`
				CommentCount int    `json:"comment_count"`
			}{
				URL: "https://api.github.com/repos/user/repo/git/commits/2",
				Author: struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				}{
					Name:  "Author2",
					Email: "author2@example.com",
					Date:  time.Now().AddDate(0, 0, -2),
				},
				Committer: struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				}{
					Name:  "Committer2",
					Email: "committer2@example.com",
					Date:  time.Now().AddDate(0, 0, -2),
				},
				Message:      "Commit message 2",
				CommentCount: 8,
			},
		},
		{
			URL:         "https://api.github.com/repos/user/repo/commits/3",
			SHA:         "sha3",
			CommentsURL: "https://api.github.com/repos/user/repo/commits/3/comments",
			Commit: struct {
				URL    string `json:"url"`
				Author struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				} `json:"author"`
				Committer struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				} `json:"committer"`
				Message      string `json:"message"`
				CommentCount int    `json:"comment_count"`
			}{
				URL: "https://api.github.com/repos/user/repo/git/commits/3",
				Author: struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				}{
					Name:  "Author3",
					Email: "author3@example.com",
					Date:  time.Now().AddDate(0, 0, -3),
				},
				Committer: struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				}{
					Name:  "Committer3",
					Email: "committer3@example.com",
					Date:  time.Now().AddDate(0, 0, -3),
				},
				Message:      "Commit message 3",
				CommentCount: 5,
			},
		},
		{
			URL:         "https://api.github.com/repos/user/repo/commits/4",
			SHA:         "sha4",
			CommentsURL: "https://api.github.com/repos/user/repo/commits/4/comments",
			Commit: struct {
				URL    string `json:"url"`
				Author struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				} `json:"author"`
				Committer struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				} `json:"committer"`
				Message      string `json:"message"`
				CommentCount int    `json:"comment_count"`
			}{
				URL: "https://api.github.com/repos/user/repo/git/commits/4",
				Author: struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				}{
					Name:  "Author4",
					Email: "author4@example.com",
					Date:  time.Now().AddDate(0, 0, -4),
				},
				Committer: struct {
					Name  string    `json:"name"`
					Email string    `json:"email"`
					Date  time.Time `json:"date"`
				}{
					Name:  "Committer4",
					Email: "committer4@example.com",
					Date:  time.Now().AddDate(0, 0, -4),
				},
				Message:      "Commit message 4",
				CommentCount: 12,
			},
		},
	}

	delivery := amqp091.Delivery{
		Body:        []byte(`{"repo_owner":"octocat","repo_name":"hello-world","url":"https://github.com/octocat/hello-world","track_from":"2025-06-08T12:00:00Z"}`),
		DeliveryTag: 123,
		RoutingKey:  "test.key",
	}

	githubService.ListCommitReturns(listCommitResponse, "", nil)
	repositoryDal.UpdateReturns(nil)
	commitDal.AddReturns(nil)
	dbMock.ExpectBegin()
	dbMock.ExpectCommit()
	err := restApi.Logic.Repository.HandleCommitPull(context.Background(), delivery)
	fmt.Println(err)
	assert.Equal(t, 2, repositoryDal.ListCallCount())
	assert.Equal(t, 1, githubService.ListCommitCallCount())
	assert.Equal(t, 1, commitDal.AddCallCount())
	assert.Equal(t, 1, repositoryDal.UpdateCallCount())
}

func TestRepoAdditionWorker(t *testing.T) {
	tests := []struct {
		name            string
		existRepo       model.Repository
		repoReturned    model.Repository
		getUrlCount     int
		repoUrlErr      error
		githubRepoCount int
		githubErr       error
		rowAffected     int64
		addCount        int
		addErr          error
		producerCount   int
		producerErr     error
		delivery        amqp091.Delivery
	}{
		{
			name:      "Success",
			existRepo: model.Repository{},
			repoReturned: model.Repository{
				ID:          1,
				Owner:       "test-owner",
				Name:        "test-name",
				URL:         "https://github.com/test-owner/test-name",
				LastFetched: time.Time{},
				CreatedAt:   time.Time{},
				UpdatedAt:   time.Time{},
			},
			getUrlCount:     1,
			repoUrlErr:      nil,
			githubRepoCount: 1,
			githubErr:       nil,
			rowAffected:     1,
			addCount:        1,
			addErr:          nil,
			producerCount:   1,
			producerErr:     nil,
			delivery: amqp091.Delivery{
				Body:        []byte(`{"repo_owner":"octocat","repo_name":"hello-world","url":"https://github.com/octocat/hello-world","track_from":"2025-06-08T12:00:00Z"}`),
				DeliveryTag: 123,
				RoutingKey:  "test.key",
			},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			repositoryDal.GetByURLCallCount()
			repositoryDal.GetByURLReturns(tt.existRepo, tt.githubErr)
			githubService.GetRepositoryReturns(&tt.repoReturned, tt.repoUrlErr)
			repositoryDal.AddReturns(tt.repoReturned, tt.rowAffected, tt.addErr)
			producer.PublishMessageReturnsOnCall(0, tt.producerErr)

			dbMock.ExpectBegin()
			dbMock.ExpectCommit()
			err := restApi.Logic.Repository.HandleRepositoryAddition(context.Background(), tt.delivery)

			assert.Equal(t, tt.addCount, repositoryDal.AddCallCount())
			assert.Equal(t, tt.githubRepoCount, githubService.GetRepositoryCallCount())
			assert.Equal(t, nil, err)
		})
	}
}
