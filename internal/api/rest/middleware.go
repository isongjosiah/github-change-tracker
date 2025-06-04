package rest

import (
	"heimdall/internal/monitoring"
	"net/http"
	"strconv"
	"time"

	"github.com/go-chi/chi"
	"github.com/go-chi/chi/v5/middleware"
	"github.com/riandyrn/otelchi"
	"go.opentelemetry.io/otel/attribute"
	"go.opentelemetry.io/otel/codes"
	"go.opentelemetry.io/otel/trace"
)

func OpenTelemetryMiddleware(serviceName string, metrics *monitoring.Metrics) func(http.Handler) http.Handler {
	return otelchi.Middleware(serviceName, otelchi.WithChiRoutes(nil))
}

func MetricsMiddleware(metrics *monitoring.Metrics) func(http.Handler) http.Handler {
	return func(next http.Handler) http.Handler {
		return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
			start := time.Now()
			ctx := r.Context()

			// Track active requests
			metrics.IncActiveRequests(ctx)
			defer metrics.DecActiveRequests(ctx)

			// Wrap response writer to capture status code
			ww := middleware.NewWrapResponseWriter(w, r.ProtoMajor)

			// Add request info to span
			span := trace.SpanFromContext(ctx)
			span.SetAttributes(
				attribute.String("http.method", r.Method),
				attribute.String("http.url", r.URL.String()),
				attribute.String("http.user_agent", r.UserAgent()),
				attribute.String("http.remote_addr", r.RemoteAddr),
			)

			next.ServeHTTP(ww, r)

			// Record metrics
			duration := time.Since(start)
			statusCode := ww.Status()

			// Add response info to span
			span.SetAttributes(
				attribute.Int("http.status_code", statusCode),
				attribute.Int64("http.response_size", int64(ww.BytesWritten())),
			)

			// Set span status based on HTTP status code
			if statusCode >= 400 {
				span.RecordError(nil)
				if statusCode >= 500 {
					span.SetStatus(codes.Error, "HTTP "+strconv.Itoa(statusCode))
				}
			}

			// Record HTTP metrics
			path := r.URL.Path
			if routePattern := chi.RouteContext(ctx).RoutePattern(); routePattern != "" {
				path = routePattern
			}

			metrics.RecordHTTPRequest(ctx, r.Method, path, statusCode, duration)
		})
	}
}
