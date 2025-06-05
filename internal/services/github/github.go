package github

//go:generate go run github.com/maxbrunsfeld/counterfeiter/v6 -generate
import (
	"context"
	"encoding/json"
	"fmt"
	"heimdall/internal/config"
	"heimdall/internal/dal/model"
	"log"
	"net/http"
	"net/url"
	"strings"
	"sync"
	"time"

	"github.com/pkg/errors"
)

//counterfeiter:generate . IRepositoryService
type IRepositoryService interface {
	GetRepository(ctx context.Context, repoOwner, repoName string) (*model.Repository, error)
	ListCommit(ctx context.Context, repoOwner, repoName string, startAt time.Time, link string) ([]Commit, string, error)
}

var (
	service = new(Service)
	once    sync.Once
)

type Service struct {
	authToken string
}

func NewService(config *config.Config) *Service {
	once.Do(func() {
		service = &Service{
			authToken: config.GithubToken,
		}
	})

	return service
}

// ListCommit retrieves commits from the GitHub API
func (s Service) ListCommit(ctx context.Context, repoOwner, repoName string, startAt time.Time, link string) ([]Commit, string, error) {
	path := fmt.Sprintf("/repos/%s/%s/commits", repoOwner, repoName)
	endpoint := BaseUrl + path

	if !startAt.IsZero() {
		endpoint += "?since=" + url.QueryEscape(startAt.Format(time.RFC3339))
	}
	if link != "" {
		if _, err := url.ParseRequestURI(link); err != nil {
			log.Println("[Github.ListCommit] invalid link " + link)
		} else {
			endpoint = link
		}
	}
	req, err := http.NewRequest(http.MethodGet, endpoint, nil)
	if err != nil {
		return nil, "", errors.Wrap(err, "Failed to create request to retrieve commits")
	}
	if s.authToken != "" {
		req.Header.Set("Authorization", "Bearer "+s.authToken)
	}

	res, err := http.DefaultClient.Do(req)
	if err != nil {
		return nil, "", errors.Wrap(err, "Failed to execute request for commits")
	}

	if res.StatusCode != http.StatusOK {
		var data map[string]any
		if err := json.NewDecoder(res.Body).Decode(&data); err != nil {
			return []Commit{}, "", errors.Wrap(err, "Failed to decode commits detail")
		}
		fmt.Println("data ->", data)

		return nil, "", errors.New(fmt.Sprintf("Failed to fetch commits -> %v", res.StatusCode))
	}

	var payload []Commit
	if err := json.NewDecoder(res.Body).Decode(&payload); err != nil {
		return payload, "", errors.Wrap(err, "Failed to decode commits detail")
	}

	return payload, res.Header.Get("Link"), nil
}

// GetRepository ...
func (s Service) GetRepository(ctx context.Context, repoOwner, repoName string) (*model.Repository, error) {
	path := fmt.Sprintf("/repos/%s/%s", repoOwner, repoName)
	endpoint := BaseUrl + path

	req, err := http.NewRequest(http.MethodGet, endpoint, nil)
	if err != nil {
		return nil, err
	}

	if s.authToken != "" {
		req.Header.Set("Authorization", "Bearer "+s.authToken)
	}

	res, err := http.DefaultClient.Do(req)
	if err != nil {
		return nil, err
	}

	if res.StatusCode != http.StatusOK {
		var dataRes map[string]any
		if er := json.NewDecoder(res.Body).Decode(&dataRes); er != nil {
			return nil, err
		}
		fmt.Println(dataRes)
		return nil, errors.New(fmt.Sprintf("Failed to retrieve repository detail -> %v", res.StatusCode))
	}

	var repository Repository
	if er := json.NewDecoder(res.Body).Decode(&repository); er != nil {
		return nil, err
	}

	parsedRepo := &model.Repository{
		Owner:       repoOwner,
		Name:        repoName,
		URL:         fmt.Sprintf("https://github.com/%s/%s", repoOwner, repoName),
		LastFetched: time.Time{},
		CreatedAt:   time.Now(),
		UpdatedAt:   time.Now(),
	}
	fmt.Println(parsedRepo)

	return parsedRepo, nil
}

// Link represents a single parsed link from the Link header.
type Link struct {
	URL        string
	Attributes map[string]string // Stores all attributes like "rel", "pet", etc.
}

// parseLinkHeaderEntry manually parses a single link header entry,
// e.g., "<https://api.github.com/user/9287/repos?page=3&per_page=100>; rel=\"next\""
// and returns a Link struct.
func parseLinkHeaderEntry(entry string) (Link, error) {
	var link Link
	link.Attributes = make(map[string]string)

	// 1. Extract URL: content between '<' and '>'
	urlStart := strings.Index(entry, "<")
	urlEnd := strings.Index(entry, ">")
	if urlStart == -1 || urlEnd == -1 || urlStart >= urlEnd {
		return Link{}, fmt.Errorf("malformed link entry: missing or invalid URL delimiters in '%s'", entry)
	}
	link.URL = entry[urlStart+1 : urlEnd]

	// 2. Extract attributes: content after '>'
	attributesStr := strings.TrimSpace(entry[urlEnd+1:])
	if attributesStr == "" {
		return link, nil // No attributes, return the link with just the URL
	}

	// Split attributes by semicolon. Regex helps with more complex splitting if needed.
	// We'll primarily rely on strings.Split for simplicity given the common format.
	attrParts := strings.Split(attributesStr, ";")
	for _, attrPart := range attrParts {
		attrPart = strings.TrimSpace(attrPart)
		if attrPart == "" {
			continue
		}

		// Split each attribute part by '=' into key and value
		kv := strings.SplitN(attrPart, "=", 2) // Split only on the first '='
		if len(kv) != 2 {
			// This part handles malformed attributes like just "rel" or "something=value=other"
			log.Printf("Warning: malformed attribute part '%s' in link entry '%s'", attrPart, entry)
			continue
		}

		key := strings.TrimSpace(kv[0])
		value := strings.TrimSpace(kv[1])

		// Remove surrounding quotes from the value, if present
		if strings.HasPrefix(value, `"`) && strings.HasSuffix(value, `"`) {
			value = strings.Trim(value, `"`)
		}

		link.Attributes[key] = value
	}

	return link, nil
}

// ParseLinkHeader parses the entire HTTP Link header string and returns a map
// where keys are the 'rel' attributes and values are the parsed Link structs.
// It returns an error if the overall header string is malformed. Individual
// malformed entries might be skipped with warnings.
func ParseLinkHeader(linkHeader string) (map[string]Link, error) {
	result := make(map[string]Link)

	if linkHeader == "" {
		return result, nil
	}

	// Split the header by commas to get individual link entries
	entries := strings.Split(linkHeader, ",")

	for _, entry := range entries {
		// Trim whitespace from each entry
		entry = strings.TrimSpace(entry)
		if entry == "" {
			continue // Skip empty entries
		}

		link, err := parseLinkHeaderEntry(entry)
		if err != nil {
			log.Printf("Error parsing link header entry '%s': %v. Skipping this entry.", entry, err)
			continue // Continue to the next entry even if one is malformed
		}

		// The 'rel' attribute is crucial for mapping
		if rel, ok := link.Attributes["rel"]; ok {
			result[rel] = link
		} else {
			log.Printf("Warning: Link entry '%s' does not have a 'rel' attribute. Skipping this entry.", entry)
		}
	}

	return result, nil
}
