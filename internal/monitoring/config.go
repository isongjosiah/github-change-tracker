package monitoring

import (
	"context"
	"fmt"
	"heimdall/internal/logger"
	"time"

	"go.opentelemetry.io/otel"
	"go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc"
	"go.opentelemetry.io/otel/exporters/prometheus"
	"go.opentelemetry.io/otel/propagation"
	"go.opentelemetry.io/otel/sdk/metric"
	"go.opentelemetry.io/otel/sdk/resource"
	"go.opentelemetry.io/otel/sdk/trace"
	semconv "go.opentelemetry.io/otel/semconv/v1.26.0"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

type Config struct {
	ServiceName    string
	ServiceVersion string
	Environment    string
	OTLPEndpoint   string
	InsecureClient bool
	Logger         logger.Logger
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
				cfg.Logger.Error(ctx, "Failed to shutdown tracer provider", err)
			}
			if err := meterProvider.Shutdown(ctx); err != nil {
				cfg.Logger.Error(ctx, "Failed to shutdown meter provider", err)
			}
			return nil
		},
	}, nil
}

func setupTracing(res *resource.Resource, cfg Config) (*trace.TracerProvider, error) {
	// OTLP gRPC Exporter
	// Options for the gRPC client
	var grpcOpts []grpc.DialOption
	if cfg.InsecureClient {
		grpcOpts = append(grpcOpts, grpc.WithTransportCredentials(insecure.NewCredentials()))
	}
	// Add other gRPC options like WithBlock() if you want a blocking connection
	// or WithTimeout() for connection timeouts.
	grpcOpts = append(grpcOpts, grpc.WithBlock())                // Blocks until connection is established
	grpcOpts = append(grpcOpts, grpc.WithTimeout(5*time.Second)) // Connection timeout

	otlpTraceExporter, err := otlptracegrpc.New(
		context.Background(),
		otlptracegrpc.WithEndpoint(cfg.OTLPEndpoint),
		otlptracegrpc.WithDialOption(grpc.WithInsecure()), // Insecure connection for development
		// For production, you would use WithTLSCredentials or similar
	)
	if err != nil {
		return nil, fmt.Errorf("failed to create OTLP gRPC trace exporter: %w", err)
	}

	// Tracer provider
	tp := trace.NewTracerProvider(
		trace.WithBatcher(otlpTraceExporter),
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
