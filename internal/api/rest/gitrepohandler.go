package rest

import (
	"context"
	"encoding/json"
	"heimdall/internal/dal/model"
	"heimdall/internal/services/messagequeue"
	values "heimdall/internal/values"
	"heimdall/pkg/function"
	"net/http"

	"github.com/go-chi/chi/v5"
)

func (a *API) RepositoryRoutes() chi.Router {
	router := chi.NewRouter()

	router.Method(http.MethodPost, "/", Handler(a.AddRepositoryToMonitorH))
	router.Method(http.MethodGet, "/commits", Handler(a.GetRepositoryCommitsH))
	// router.Method(http.MethodGet, "/reset-collection-date", Handler(a.ResetCollectionDateH))

	return router
}

// AddRepositoryToMonitorH handles request to add a repository to monitor to the database
func (a *API) AddRepositoryToMonitorH(w http.ResponseWriter, r *http.Request) *ServerResponse {
	var payload model.NewRepository
	if err := json.NewDecoder(r.Body).Decode(&payload); err != nil {
		return RespondWithError(err, "Bad request body", values.BadRequest, function.StatusCode(values.BadRequest))
	}
	if err := a.Deps.Queue.Publish(context.Background(), messagequeue.AddRepo, payload); err != nil {
		return RespondWithError(err, "Somethig went wrong. Please try again later", values.Error, function.StatusCode(values.Error))
	}

	return &ServerResponse{
		Message:    "repository and commits are being fetched",
		Status:     values.Created,
		StatusCode: http.StatusCreated,
	}
}

// GetRepositoryCommitsH handles request to retrieve paginated commit for an existing repository
func (a *API) GetRepositoryCommitsH(w http.ResponseWriter, r *http.Request) *ServerResponse {
	status := ""
	message := ""
	repoCommits, err := a.Logic.Repository.ListCommitsByRepositoryName(context.Background(), r.URL.Query())
	if err != nil {
		return RespondWithError(err, message, status, function.StatusCode(status))
	}

	return &ServerResponse{
		Message:    message,
		Status:     status,
		StatusCode: function.StatusCode(status),
		Payload:    repoCommits,
	}
}
