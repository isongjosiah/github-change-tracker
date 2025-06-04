package monitoring

import (
	"context"
	"time"

	"go.opentelemetry.io/otel"
	"go.opentelemetry.io/otel/attribute"
	"go.opentelemetry.io/otel/metric"
)

type Metrics struct {
	// HTTP metrics
	HTTPRequestDuration metric.Float64Histogram
	HTTPRequestsTotal   metric.Int64Counter
	HTTPRequestsActive  metric.Int64UpDownCounter

	// Application metrics
	DatabaseConnections metric.Int64UpDownCounter
	CacheHits           metric.Int64Counter
	CacheSize           metric.Int64UpDownCounter

	// Business metrics
	CommitsProcessed   metric.Int64Counter
	RepositoriesActive metric.Int64UpDownCounter
}

func NewMetrics(serviceName string) (*Metrics, error) {
	meter := otel.Meter(serviceName)

	httpDuration, err := meter.Float64Histogram(
		"http_request_duration_seconds",
		metric.WithDescription("Duration of HTTP requests in seconds"),
		metric.WithUnit("s"),
	)
	if err != nil {
		return nil, err
	}

	httpTotal, err := meter.Int64Counter(
		"http_requests_total",
		metric.WithDescription("Total number of HTTP requests"),
	)
	if err != nil {
		return nil, err
	}

	httpActive, err := meter.Int64UpDownCounter(
		"http_requests_active",
		metric.WithDescription("Number of active HTTP requests"),
	)
	if err != nil {
		return nil, err
	}

	dbConnections, err := meter.Int64UpDownCounter(
		"database_connections_active",
		metric.WithDescription("Number of active database connections"),
	)
	if err != nil {
		return nil, err
	}

	cacheHits, err := meter.Int64Counter(
		"cache_hits_total",
		metric.WithDescription("Total number of cache hits"),
	)
	if err != nil {
		return nil, err
	}

	cacheSize, err := meter.Int64UpDownCounter(
		"cache_size_bytes",
		metric.WithDescription("Current cache size in bytes"),
	)
	if err != nil {
		return nil, err
	}

	commitsProcessed, err := meter.Int64Counter(
		"commits_processed_total",
		metric.WithDescription("Total number of commits processed"),
	)
	if err != nil {
		return nil, err
	}

	reposActive, err := meter.Int64UpDownCounter(
		"repositories_active",
		metric.WithDescription("Number of active repositories"),
	)
	if err != nil {
		return nil, err
	}

	return &Metrics{
		HTTPRequestDuration: httpDuration,
		HTTPRequestsTotal:   httpTotal,
		HTTPRequestsActive:  httpActive,
		DatabaseConnections: dbConnections,
		CacheHits:           cacheHits,
		CacheSize:           cacheSize,
		CommitsProcessed:    commitsProcessed,
		RepositoriesActive:  reposActive,
	}, nil
}

// Helper methods for recording metrics
func (m *Metrics) RecordHTTPRequest(ctx context.Context, method, path string, statusCode int, duration time.Duration) {
	attrs := []attribute.KeyValue{
		attribute.String("method", method),
		attribute.String("path", path),
		attribute.Int("status_code", statusCode),
	}

	m.HTTPRequestDuration.Record(ctx, duration.Seconds(), metric.WithAttributes(attrs...))
	m.HTTPRequestsTotal.Add(ctx, 1, metric.WithAttributes(attrs...))
}

func (m *Metrics) IncActiveRequests(ctx context.Context) {
	m.HTTPRequestsActive.Add(ctx, 1)
}

func (m *Metrics) DecActiveRequests(ctx context.Context) {
	m.HTTPRequestsActive.Add(ctx, -1)
}

func (m *Metrics) RecordCommitProcessed(ctx context.Context, repository string) {
	m.CommitsProcessed.Add(ctx, 1, metric.WithAttributes(
		attribute.String("repository", repository),
	))
}
