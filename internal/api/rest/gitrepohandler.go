package rest

import (
	"context"
	"encoding/json"
	"heimdall/internal/dal/model"
	value "heimdall/internal/values"
	values "heimdall/internal/values"
	"heimdall/pkg/function"
	"net/http"

	"github.com/go-chi/chi/v5"
)

func (a *API) RepositoryRoutes() chi.Router {
	router := chi.NewRouter()

	router.Method(http.MethodPost, "/", Handler(a.AddRepositoryToMonitorH))
	router.Method(http.MethodGet, "/commits", Handler(a.GetRepositoryCommitsH))
	router.Method(http.MethodGet, "/reset-collection-date", Handler(a.ResetRepositoryCommits))

	return router
}

// AddRepositoryToMonitorH handles request to add a repository to monitor to the database
func (a *API) AddRepositoryToMonitorH(w http.ResponseWriter, r *http.Request) *ServerResponse {
	var payload model.NewRepository
	if err := json.NewDecoder(r.Body).Decode(&payload); err != nil {
		return RespondWithError(err, "Bad request body", values.BadRequest, function.StatusCode(values.BadRequest))
	}

	status, message, err := a.Logic.Repository.Create(context.Background(), payload)
	if err != nil {
		return RespondWithError(err, message, status, function.StatusCode(status))
	}

	return &ServerResponse{
		Message:    message,
		Status:     status,
		StatusCode: function.StatusCode(status),
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

func (a *API) ResetRepositoryCommits(w http.ResponseWriter, r *http.Request) *ServerResponse {
	var data model.ResetCommitReq
	if err := json.NewDecoder(r.Body).Decode(&data); err != nil {
		return RespondWithError(err, "Bad request body", value.BadRequest, http.StatusBadRequest)
	}

	status, message, err := a.Logic.Repository.ResetCommitFromDate(context.Background(), data)
	if err != nil {
		return RespondWithError(err, message, status, function.StatusCode(status))
	}

	return &ServerResponse{
		Message:    message,
		Status:     status,
		StatusCode: function.StatusCode(status),
	}
}
