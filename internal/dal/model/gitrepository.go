package model

import (
	"encoding/json"
	"log"
	"time"
)

// Repository represents a GitHub repository to be monitored by the system.
type Repository struct {
	// ID is a unique identifier for the repository within our system (e.g., "owner/name").
	ID int `json:"id" bun:"id,pk,autoincrement"`

	// Owner is the GitHub username or organization name that owns the repository.
	Owner string `json:"owner,omitempty" bun:"owner"`

	// Name is the name of the GitHub repository.
	Name string `json:"name,omitempty" bun:"name"`

	URL string `json:"url,omitempty" bun:"url"`

	// LastFetched stores the timestamp of the last successful commit fetch for this repository.
	// This helps in fetching only new commits since the last poll.
	LastFetched time.Time `json:"last_fetched" bun:"last_fetched"`

	CreatedAt time.Time `json:"created_at" bun:"created_at"`

	UpdatedAt time.Time `json:"updated_at" bun:"updated_at"`
}

func (r Repository) PullCommitTask() CommitPullJob {
	return CommitPullJob{
		Id:          r.ID,
		RepoOwner:   r.Owner,
		RepoName:    r.Name,
		LastFetched: r.LastFetched,
	}
}

type Repositories []Repository

func (rs Repositories) ScheduleCommitPullTask() CommitJobs {
	pullJobs := make(CommitJobs, len(rs))

	for i, r := range rs {
		pullJobs[i] = CommitPullJob{
			Id:          r.ID,
			RepoOwner:   r.Owner,
			RepoName:    r.Name,
			LastFetched: r.LastFetched,
		}
	}
	return pullJobs
}

type CommitJobs []CommitPullJob

// Payload returns a stringified JSON containing lastFetched, repoOwner, and repoName for the repository.
func (js CommitJobs) Payload() ([]byte, error) {
	// Marshal the payloadData struct into a JSON byte slice.
	body, err := json.Marshal(js)
	if err != nil {
		log.Printf("Error marshaling repository payload to JSON for : %v", err)
		return nil, err
	}
	return body, nil
}

func (js CommitJobs) Type() string {
	return "commit-pulljob"
}

type CommitPullJob struct {
	Id          int       `json:"id,omitempty"`
	RepoOwner   string    `json:"repo_owner,omitempty"`
	RepoName    string    `json:"repo_name,omitempty"`
	LastFetched time.Time `json:"last_fetched"`
}

// Payload returns a stringified JSON containing lastFetched, repoOwner, and repoName for the repository.
func (j CommitPullJob) Payload() ([]byte, error) {
	// Marshal the payloadData struct into a JSON byte slice.
	body, err := json.Marshal(j)
	if err != nil {
		log.Printf("Error marshaling repository payload to JSON for %s/%s: %v", j.RepoOwner, j.RepoName, err)
		return nil, err
	}
	return body, nil
}

func (j CommitPullJob) Type() string {
	return "commit-pulljob"
}

// NewRepository represents the request body for adding a new
// repository to the system
type NewRepository struct {
	RepoOwner string    `json:"repo_owner,omitempty"`
	RepoName  string    `json:"repo_name,omitempty"`
	URL       string    `json:"url,omitempty"`
	TrackFrom time.Time `json:"track_from"`
}

// Payload returns a stringified JSON containing lastFetched, repoOwner, and repoName for the repository.
func (r NewRepository) Payload() ([]byte, error) {
	// Define an anonymous struct to hold the desired payload fields.
	payloadData := struct {
		TrackFrom time.Time `json:"track_from"`
		RepoOwner string    `json:"repo_owner"`
		RepoName  string    `json:"repo_name"`
	}{
		TrackFrom: r.TrackFrom,
		RepoOwner: r.RepoOwner,
		RepoName:  r.RepoName,
	}

	// Marshal the payloadData struct into a JSON byte slice.
	body, err := json.Marshal(payloadData)
	if err != nil {
		log.Printf("Error marshaling repository payload to JSON for %s/%s: %v", r.RepoOwner, r.RepoName, err)
		return nil, err
	}
	return body, nil
}

func (r NewRepository) Type() string {
	return "new-repository"
}

type ResetCommitReq struct {
	RepoOwner string    `json:"repo_owner,omitempty"`
	RepoName  string    `json:"repo_name,omitempty"`
	ResetFrom time.Time `json:"reset_from"`
}
