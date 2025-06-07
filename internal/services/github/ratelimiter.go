package github

import (
	"heimdall/internal/config"
	"net/http"
	"strconv"
	"sync"
	"time"
)

// RateLimitStatus provides current rate limit information
type RateLimitStatus struct {
	Remaining   int           `json:"remaining"`
	Limit       int           `json:"limit"`
	Used        int           `json:"used"`
	ResetTime   time.Time     `json:"reset_time"`
	ResetIn     time.Duration `json:"reset_in"`
	LastUpdated time.Time     `json:"last_updated"`
}

// RateLimiter manages GitHub API rate limits
type RateLimiter struct {
	mu          sync.RWMutex
	remaining   int
	limit       int
	used        int
	resetTime   time.Time
	resetIn     int
	lastUpdated time.Time
}

// NewRateLimiter creates a new rate limiter with default GitHub limits
func NewRateLimiter(cfg *config.Config) *RateLimiter {
	limit := 5000
	if cfg.GithubToken == "" {
		limit = 60
	}
	return &RateLimiter{
		remaining: limit,
		limit:     limit,
		resetTime: time.Now().Add(time.Hour),
	}
}

// CanMakeRequest checks if a request can be made without hitting rate limit
func (rl *RateLimiter) CanMakeRequest() bool {
	rl.mu.Lock()
	defer rl.mu.Unlock()

	if time.Now().After(rl.resetTime) {
		return false
	}

	return rl.remaining > 10
}

// UpdateFromHeaders updates rate limit info from GitHub response headers
func (rl *RateLimiter) UpdateFromHeader(headers http.Header) {
	rl.mu.Lock()
	defer rl.mu.Unlock()

	if limitStr := headers.Get("X-RateLimit-Limit"); limitStr != "" {
		if limit, err := strconv.Atoi(limitStr); err == nil {
			rl.limit = limit
		}
	}

	if remainingStr := headers.Get("X-RateLimit-Remaining"); remainingStr != "" {
		if remaining, err := strconv.Atoi(remainingStr); err == nil {
			rl.remaining = remaining
		}
	}

	if usedStr := headers.Get("X-RateLimit-Used"); usedStr != "" {
		if used, err := strconv.Atoi(usedStr); err == nil {
			rl.used = used
		}
	}

	if resetStr := headers.Get("X-RateLimit-Reset"); resetStr != "" {
		if resetUnix, err := strconv.ParseInt(resetStr, 10, 64); err == nil {
			rl.resetTime = time.Unix(resetUnix, 0)
		}
	}

	rl.lastUpdated = time.Now()
}

// GetStatus returns current rate limit status
func (rl *RateLimiter) GetStatus() RateLimitStatus {
	rl.mu.RLock()
	defer rl.mu.RUnlock()

	resetIn := time.Duration(0)
	if time.Now().Before(rl.resetTime) {
		resetIn = time.Until(rl.resetTime)
	}

	return RateLimitStatus{
		Remaining:   rl.remaining,
		Limit:       rl.limit,
		Used:        rl.used,
		ResetTime:   rl.resetTime,
		ResetIn:     resetIn,
		LastUpdated: rl.lastUpdated,
	}
}

// WaitUntilReset returns duration to wait until rate limit resets
func (rl *RateLimiter) WaitUntilReset() time.Duration {
	rl.mu.RLock()
	defer rl.mu.RUnlock()

	if time.Now().After(rl.resetTime) {
		return 0
	}
	return time.Until(rl.resetTime)
}
