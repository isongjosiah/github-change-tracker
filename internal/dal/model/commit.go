package model

import "time"

// Commit represents a simplified GitHub commit, mirroring key information
// often retrieved from the GitHub API.
type Commit struct {
	// Id is the unique identifier for the commit, typically its SHA-1 hash.
	Id string `json:"id,omitempty" bun:"id,pk"`

	// RepoId is the unique identifier of the repository this commit belongs to.
	// This helps in linking commits back to their source repository within the system.
	RepoId int `json:"repo_id,omitempty" bun:"repo_id"`

	// Message is the commit message provided by the author.
	Message string `json:"message,omitempty" bun:"message"`

	// Author is the name or username of the commit author.
	Author string `json:"author,omitempty" bun:"author"`

	// Date is the timestamp of when the commit was authored or committed.
	Date time.Time `json:"date" bun:"date"`

	// URL is the direct URL to the commit on GitHub.
	// This allows for easy navigation to the commit's details.
	URL string `json:"url,omitempty" bun:"url"`
}

type TopAuthor struct {
	Author      string `json:"author,omitempty"`
	RepoName    string `json:"repo_name,omitempty"`
	CommitCount string `json:"commit_count,omitempty"`
}
