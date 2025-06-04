package monitoring

import (
	"context"

	"go.opentelemetry.io/otel"
	"go.opentelemetry.io/otel/exporters/jaeger"
	"go.opentelemetry.io/otel/exporters/prometheus"
	"go.opentelemetry.io/otel/propagation"
	"go.opentelemetry.io/otel/sdk/metric"
	"go.opentelemetry.io/otel/sdk/resource"
	"go.opentelemetry.io/otel/sdk/trace"
	semconv "go.opentelemetry.io/otel/semconv/v1.21.0"
	"go.uber.org/zap"
)

type Config struct {
	ServiceName    string
	ServiceVersion string
	Environment    string
	JaegerEndpoint string
	Logger         *zap.Logger
}

type Telemetry struct {
	TracerProvider *trace.TracerProvider
	MeterProvider  *metric.MeterProvider
	Shutdown       func(context.Context) error
}

func Initialize(cfg Config) (*Telemetry, error) {
	// Create resource
	res, err := resource.Merge(
		resource.Default(),
		resource.NewWithAttributes(
			semconv.SchemaURL,
			semconv.ServiceName(cfg.ServiceName),
			semconv.ServiceVersion(cfg.ServiceVersion),
			semconv.DeploymentEnvironment(cfg.Environment),
		),
	)
	if err != nil {
		return nil, err
	}

	// Setup tracing
	tracerProvider, err := setupTracing(res, cfg)
	if err != nil {
		return nil, err
	}

	// Setup metrics
	meterProvider, err := setupMetrics(res)
	if err != nil {
		return nil, err
	}

	// Set global providers
	otel.SetTracerProvider(tracerProvider)
	otel.SetMeterProvider(meterProvider)
	otel.SetTextMapPropagator(propagation.TraceContext{})

	return &Telemetry{
		TracerProvider: tracerProvider,
		MeterProvider:  meterProvider,
		Shutdown: func(ctx context.Context) error {
			if err := tracerProvider.Shutdown(ctx); err != nil {
				cfg.Logger.Error("Failed to shutdown tracer provider", zap.Error(err))
			}
			if err := meterProvider.Shutdown(ctx); err != nil {
				cfg.Logger.Error("Failed to shutdown meter provider", zap.Error(err))
			}
			return nil
		},
	}, nil
}

func setupTracing(res *resource.Resource, cfg Config) (*trace.TracerProvider, error) {
	// Jaeger exporter
	jaegerExporter, err := jaeger.New(
		jaeger.WithCollectorEndpoint(jaeger.WithEndpoint(cfg.JaegerEndpoint)),
	)
	if err != nil {
		return nil, err
	}

	// Tracer provider
	tp := trace.NewTracerProvider(
		trace.WithBatcher(jaegerExporter),
		trace.WithResource(res),
		trace.WithSampler(trace.AlwaysSample()), // Use ParentBased(TraceIDRatioBased(0.1)) in production
	)

	return tp, nil
}

func setupMetrics(res *resource.Resource) (*metric.MeterProvider, error) {
	// Prometheus exporter
	prometheusExporter, err := prometheus.New()
	if err != nil {
		return nil, err
	}

	// Meter provider
	mp := metric.NewMeterProvider(
		metric.WithReader(prometheusExporter),
		metric.WithResource(res),
	)

	return mp, nil
}
