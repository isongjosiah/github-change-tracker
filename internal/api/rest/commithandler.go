package rest

import (
	"context"
	"heimdall/pkg/function"
	"net/http"

	"github.com/go-chi/chi/v5"
)

func (a *API) CommitRoutes() chi.Router {
	commitRouter := chi.NewRouter()
	commitRouter.Method(http.MethodGet, "/top-contributors", Handler(a.TopContributorsH))

	return commitRouter
}

func (a *API) TopContributorsH(w http.ResponseWriter, r *http.Request) *ServerResponse {
	topContributors, status, messagge, err := a.Logic.Commit.TopAuthor(context.Background(), r.URL.Query())
	if err != nil {
		return RespondWithError(err, messagge, status, function.StatusCode(status))
	}

	return &ServerResponse{
		Message:    messagge,
		Status:     status,
		StatusCode: function.StatusCode(status),
		Payload:    topContributors,
	}
}
