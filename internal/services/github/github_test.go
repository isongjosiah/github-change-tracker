package github

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func Test_parseLinkHeaderEntry(t *testing.T) {
	tests := []struct {
		name         string
		entry        string
		expectedLink Link
		expectedErr  string
	}{
		{
			name:  "Valid entry with rel attribute",
			entry: `<https://api.github.com/user/9287/repos?page=3&per_page=100>; rel="next"`,
			expectedLink: Link{
				URL:        "https://api.github.com/user/9287/repos?page=3&per_page=100",
				Attributes: map[string]string{"rel": "next"},
			},
		},
		{
			name:  "Entry with multiple attributes",
			entry: `<https://api.github.com/user/9287/repos?page=1&per_page=100>; rel="prev"; pet="dog"`,
			expectedLink: Link{
				URL:        "https://api.github.com/user/9287/repos?page=1&per_page=100",
				Attributes: map[string]string{"rel": "prev", "pet": "dog"},
			},
		},
		{
			name:  "Entry with no attributes",
			entry: `<https://api.github.com/user/9287/repos?page=1>`,
			expectedLink: Link{
				URL:        "https://api.github.com/user/9287/repos?page=1",
				Attributes: map[string]string{},
			},
		},
		{
			name:        "Malformed URL - missing opening bracket",
			entry:       `https://api.github.com/user/9287/repos?page=1>; rel="next"`,
			expectedErr: "malformed link entry: missing or invalid URL delimiters in 'https://api.github.com/user/9287/repos?page=1>; rel=\"next\"'",
		},
		{
			name:        "Malformed URL - missing closing bracket",
			entry:       `<https://api.github.com/user/9287/repos?page=1; rel="next"`,
			expectedErr: "malformed link entry: missing or invalid URL delimiters in '<https://api.github.com/user/9287/repos?page=1; rel=\"next\"'",
		},
		{
			name:        "Empty entry",
			entry:       "",
			expectedErr: "malformed link entry: missing or invalid URL delimiters in ''",
		},
		{
			name:  "Attribute without value",
			entry: `<https://example.com/test>; rel`, // This case logs a warning and skips the attribute
			expectedLink: Link{
				URL:        "https://example.com/test",
				Attributes: map[string]string{},
			},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			link, err := parseLinkHeaderEntry(tt.entry)

			if tt.expectedErr != "" {
				assert.Error(t, err)
				assert.Contains(t, err.Error(), tt.expectedErr)
			} else {
				assert.NoError(t, err)
				assert.Equal(t, tt.expectedLink.URL, link.URL)
				assert.Equal(t, tt.expectedLink.Attributes, link.Attributes)
			}
		})
	}
}

func Test_ParseLinkHeader(t *testing.T) {
	tests := []struct {
		name          string
		linkHeader    string
		expectedLinks map[string]Link
		expectedErr   string
	}{
		{
			name:          "Empty header",
			linkHeader:    "",
			expectedLinks: map[string]Link{},
		},
		{
			name:       "Single link entry",
			linkHeader: `<https://api.github.com/user/9287/repos?page=2>; rel="next"`,
			expectedLinks: map[string]Link{
				"next": {
					URL:        "https://api.github.com/user/9287/repos?page=2",
					Attributes: map[string]string{"rel": "next"},
				},
			},
		},
		{
			name:       "Multiple link entries",
			linkHeader: `<https://api.github.com/user/9287/repos?page=2>; rel="next", <https://api.github.com/user/9287/repos?page=1>; rel="prev"`,
			expectedLinks: map[string]Link{
				"next": {
					URL:        "https://api.github.com/user/9287/repos?page=2",
					Attributes: map[string]string{"rel": "next"},
				},
				"prev": {
					URL:        "https://api.github.com/user/9287/repos?page=1",
					Attributes: map[string]string{"rel": "prev"},
				},
			},
		},
		{
			name:          "Entry without rel attribute (should be skipped)",
			linkHeader:    `<https://api.github.com/user/9287/repos?page=2>; type="collection"`,
			expectedLinks: map[string]Link{},
		},
		{
			name:       "Mixed valid and invalid entries",
			linkHeader: `<https://valid.com>; rel="valid", <invalid-url; rel="bad"`,
			expectedLinks: map[string]Link{
				"valid": {
					URL:        "https://valid.com",
					Attributes: map[string]string{"rel": "valid"},
				},
			},
			// No explicit error returned, but log.Printf will be called for the invalid entry.
		},
		{
			name:       "Entries with extra spaces",
			linkHeader: ` <https://space.com/next> ; rel="next" , <https://space.com/prev> ; rel="prev" `,
			expectedLinks: map[string]Link{
				"next": {
					URL:        "https://space.com/next",
					Attributes: map[string]string{"rel": "next"},
				},
				"prev": {
					URL:        "https://space.com/prev",
					Attributes: map[string]string{"rel": "prev"},
				},
			},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			links, err := ParseLinkHeader(tt.linkHeader)

			if tt.expectedErr != "" {
				assert.Error(t, err)
				assert.Contains(t, err.Error(), tt.expectedErr)
			} else {
				assert.NoError(t, err)
				assert.Equal(t, tt.expectedLinks, links)
			}
		})
	}
}
