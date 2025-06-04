package rest

import (
	"context"
	"net/http"

	"github.com/go-chi/chi/v5"
)

func (a *API) CommitRoutes() chi.Router {
	commitRouter := chi.NewRouter()
	commitRouter.Method(http.MethodGet, "/top-contributors", Handler(a.TopContributorsH))

	return commitRouter
}

func (a *API) TopContributorsH(w http.ResponseWriter, r *http.Request) *ServerResponse {
	topContributors, err := a.Logic.Commit.TopAuthor(context.Background(), r.URL.Query())
	if err != nil {
		return RespondWithError(err, "", "", 1)
	}

	return &ServerResponse{
		Message:    "",
		Status:     "",
		StatusCode: http.StatusOK,
		Payload:    topContributors,
	}
}
