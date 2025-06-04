package function

import (
	values "heimdall/internal/values"
	"net/http"
)

func StatusCode(status string) int {
	switch status {
	case values.Success:
		return http.StatusOK
	case values.NotFound:
		return http.StatusNotFound
	case values.Created:
		return http.StatusCreated
	default:
		return http.StatusInternalServerError
	}
}
