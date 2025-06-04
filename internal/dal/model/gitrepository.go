package model

import "time"

// Repository represents a GitHub repository to be monitored by the system.
type Repository struct {
	// ID is a unique identifier for the repository within our system (e.g., "owner/name").
	ID int `json:"id,omitempty"`

	// Owner is the GitHub username or organization name that owns the repository.
	Owner string `json:"owner,omitempty"`

	// Name is the name of the GitHub repository.
	Name string `json:"name,omitempty"`

	// LastFetched stores the timestamp of the last successful commit fetch for this repository.
	// This helps in fetching only new commits since the last poll.
	LastFetched time.Time `json:"last_fetched"`

	CreatedAt time.Time `json:"created_at"`

	UpdatedAt time.Time `json:"updated_at"`
}

// NewRepository represents the request body for adding a new
// repository to the system
type NewRepository struct {
	URL       string    `json:"url,omitempty"`
	TrackFrom time.Time `json:"track_from"`
}
