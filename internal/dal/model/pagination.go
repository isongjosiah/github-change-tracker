package model

type PaginationData struct {
	PerPage    int    `json:"per_page,omitempty"`
	Total      int    `json:"total,omitempty"`
	HasNext    bool   `json:"has_next,omitempty"`
	NextCursor string `json:"next_cursor,omitempty"`
}
