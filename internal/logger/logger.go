package logger

import (
	"context"
	"heimdall/internal/config"
	"log/slog"
	"os"

	"go.opentelemetry.io/otel"
	"go.opentelemetry.io/otel/attribute"
	"go.opentelemetry.io/otel/codes"
	"go.opentelemetry.io/otel/trace"
)

// Logger interface describes the system central logger
type Logger interface {
	Debug(ctx context.Context, msg string, args ...any)
	Info(ctx context.Context, msg string, args ...any)
	Warn(ctx context.Context, msg string, args ...any)
	Error(ctx context.Context, msg string, args ...any)

	With(args ...any) Logger
	WithGroup(name string) Logger
}

type HybridLogger struct {
	slogger *slog.Logger
	tracer  trace.Tracer
}

// NewHybridLogger creates a new hybrid logger instance
func NewHybridLogger(cfg *config.Config) *HybridLogger {
	level := slog.LevelError
	if cfg.Environment == "development" {
		level = slog.LevelDebug
	}

	// setup logger handle for structured logging
	// to standard output
	opts := &slog.HandlerOptions{
		Level:     level,
		AddSource: true,
	}
	handler := slog.NewJSONHandler(os.Stdout, opts)
	slogger := slog.New(handler).With(
		"service", cfg.ServiceName,
		"environment", cfg.Environment,
	)

	// setup opentelemetry tracer
	tracer := otel.Tracer(cfg.ServiceName)
	return &HybridLogger{
		slogger: slogger,
		tracer:  tracer,
	}
}

// Debug logs debug messages to slog only (not OpenTelemetry)
func (l *HybridLogger) Debug(ctx context.Context, msg string, args ...any) {
	l.slogger.DebugContext(ctx, msg, args...)
}

// Info logs to slog and adds span events to OpenTelemetry
func (l *HybridLogger) Info(ctx context.Context, msg string, args ...any) {
	l.slogger.InfoContext(ctx, msg, args...)
	l.addSpanEvent(ctx, "info", msg, args...)
}

// Warn logs to slog and adds span events to OpenTelemetry
func (l *HybridLogger) Warn(ctx context.Context, msg string, args ...any) {
	l.slogger.WarnContext(ctx, msg, args...)
	l.addSpanEvent(ctx, "warn", msg, args...)
}

// Error logs to slog, adds span events, and marks span as error
func (l *HybridLogger) Error(ctx context.Context, msg string, args ...any) {
	l.slogger.ErrorContext(ctx, msg, args...)

	span := trace.SpanFromContext(ctx)
	if span.IsRecording() {
		span.SetStatus(codes.Error, msg)
		l.addSpanEvent(ctx, "error", msg, args...)
	}
}

// With returns a new logger with the given attributes
func (l *HybridLogger) With(args ...any) Logger {
	return &HybridLogger{
		slogger: l.slogger.With(args...),
		tracer:  l.tracer,
	}
}

// WithGroup returns a new logger with the given group name
func (l *HybridLogger) WithGroup(name string) Logger {
	return &HybridLogger{
		slogger: l.slogger.WithGroup(name),
		tracer:  l.tracer,
	}
}

// addSpanEvent adds structured log data to OpenTelemetry span
func (l *HybridLogger) addSpanEvent(ctx context.Context, level, msg string, args ...any) {
	span := trace.SpanFromContext(ctx)
	if !span.IsRecording() {
		return
	}

	attrs := []attribute.KeyValue{
		attribute.String("level", level),
		attribute.String("message", msg),
	}

	// Convert slog args to OpenTelemetry attributes
	for i := 0; i < len(args); i += 2 {
		if i+1 < len(args) {
			key := args[i].(string)
			value := args[i+1]
			attrs = append(attrs, convertToAttribute(key, value))
		}
	}

	span.AddEvent("log", trace.WithAttributes(attrs...))
}

// convertToAttribute converts various types to OpenTelemetry attributes
func convertToAttribute(key string, value any) attribute.KeyValue {
	switch v := value.(type) {
	case string:
		return attribute.String(key, v)
	case int:
		return attribute.Int(key, v)
	case int64:
		return attribute.Int64(key, v)
	case float64:
		return attribute.Float64(key, v)
	case bool:
		return attribute.Bool(key, v)
	default:
		return attribute.String(key, slog.AnyValue(v).String())
	}
}

// Business logic helpers for common patterns
func (l *HybridLogger) LogUserAction(ctx context.Context, userID, action string, metadata map[string]any) {
	args := []any{"user_id", userID, "action", action}
	for k, v := range metadata {
		args = append(args, k, v)
	}
	l.Info(ctx, "User action completed", args...)
}

func (l *HybridLogger) LogAPICall(ctx context.Context, method, endpoint string, statusCode int, duration float64) {
	l.Info(ctx, "API call completed",
		"method", method,
		"endpoint", endpoint,
		"status_code", statusCode,
		"duration_ms", duration,
	)
}

func (l *HybridLogger) LogDatabaseQuery(ctx context.Context, query string, duration float64, rowsAffected int64) {
	l.Info(ctx, "Database query executed",
		"query", query,
		"duration_ms", duration,
		"rows_affected", rowsAffected,
	)
}
