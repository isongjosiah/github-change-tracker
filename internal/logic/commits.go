package logic

import (
	"context"
	"heimdall/internal/dal/model"
	"heimdall/internal/dal/repositories"
	value "heimdall/internal/values"
	"heimdall/pkg/function"
	"net/url"
)

// CommitLogic encapsulates the business logic related to commit data.
// It acts as a service layer that orchestrates calls to the data repository,
// applying any necessary business rules or transformations.
type CommitLogic struct {
	CommitRepo repositories.IRepositoryCommit
}

// NewCommitLogic creates and returns a new instance of CommitLogic.
// It takes an implementation of the IRepositoryCommit interface, which provides
// data access capabilities for commits.
func NewCommitLogic(commitRepo repositories.IRepositoryCommit) *CommitLogic {
	return &CommitLogic{
		CommitRepo: commitRepo,
	}
}

// TopAuthor retrieves a list of top authors based on criteria provided in the URL query parameters.
// It parses the 'author-count' parameter to determine how many top authors to fetch.
//
// Parameters:
//
//	ctx:   The context for the operation, typically used for timeouts and cancellation.
//	query: A url.Values map containing query parameters from the HTTP request.
//	       It expects a key "author-count" to specify the number of top authors.
//
// Returns:
//
//	A slice of `model.TopAuthors` structs, each containing an author's name,
//	the repository name they committed to, and their commit count.
//	Returns an error if the underlying data retrieval fails.
func (c *CommitLogic) TopAuthor(ctx context.Context, query url.Values) ([]model.TopAuthor, string, string, error) {
	topN := function.StringToInt(query.Get("author-count"))
	payload, err := c.CommitRepo.TopAuthors(ctx, topN)
	if err != nil {
		// TODO: handle logging
		return payload, value.Error, "Something went wrong. Please try again later", err
	}
	return payload, value.Success, "Top Authors retrieved", nil
}
