package model

import "time"

// Commit represents a simplified GitHub commit, mirroring key information
// often retrieved from the GitHub API.
type Commit struct {
	// Id is the unique identifier for the commit, typically its SHA-1 hash.
	Id string `json:"id,omitempty"`

	// RepoId is the unique identifier of the repository this commit belongs to.
	// This helps in linking commits back to their source repository within the system.
	RepoId string `json:"repo_id,omitempty"`

	// Message is the commit message provided by the author.
	Message string `json:"message,omitempty"`

	// Author is the name or username of the commit author.
	Author string `json:"author,omitempty"`

	// Date is the timestamp of when the commit was authored or committed.
	Date time.Time `json:"date"`

	// URL is the direct URL to the commit on GitHub.
	// This allows for easy navigation to the commit's details.
	URL string `json:"url,omitempty"`
}

type TopAuthor struct {
	Author      string `json:"author,omitempty"`
	RepoName    string `json:"repo_name,omitempty"`
	CommitCount string `json:"commit_count,omitempty"`
}
