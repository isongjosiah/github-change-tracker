# syntax = docker/dockerfile:1.4

# Use a multi-stage build for a smaller final image
# Stage 1: Build
FROM --platform=linux/amd64 golang:1.22.3-alpine AS builder

# Set build-time arguments and environment variables
ARG PORT=8080 # Provide a default port
ENV PORT=${PORT}

ENV VERSION=1.0.0
ENV NAME=pooler

# Disable CGO for static binaries
ENV CGO_ENABLED=0 

WORKDIR /app

# Copy go.mod and go.sum first to leverage Docker cache
COPY go.mod go.sum ./
RUN go mod download

# Copy the rest of the application source code
COPY . .

# Build the Go application
# Use -trimpath to remove file system paths from the compiled executable
# Use -ldflags to embed version information and strip unnecessary symbols
RUN go build -o bin/${NAME} \
    -ldflags "-X main.Version=${VERSION} -s -w" \
    ./cmd/lend/main.go

# Stage 2: Run
FROM --platform=linux/amd64 alpine:3.19.1

# Inherit environment variables from the build stage or re-declare them if needed
# ENV PORT=${PORT} # Already set if ARG PORT is used above and then ENV PORT in builder stage

ENV NAME=${NAME}

WORKDIR /app

# Copy only the compiled binary from the builder stage
COPY --from=builder /app/bin/${NAME} /usr/local/bin/${NAME}

# Expose the port
EXPOSE ${PORT}

# Run the application
CMD ["/usr/local/bin/${NAME}"]

# Optional HEALTHCHECK instruction for better orchestration
# HEALTHCHECK --interval=30s --timeout=3s \
#   CMD curl -f http://localhost:${PORT}/health || exit 1
