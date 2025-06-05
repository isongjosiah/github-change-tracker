# GitHub Change Tracker System

## Overview

This project implements a scalable, asynchronous system to track commit changes
on GitHub repositories by **polling** the GitHub API. It is designed as a
modular monolith with scalable workers, using PostgreSQL for persistent
data storage, RabbitMQ as the task queue and Prometheus, and OpenTelemetry
for monitoring and metrics

---

## Features

- **Authentication:** Uses GitHub Personal Access Tokens (PAT) for API
  authentication instead of GitHub Apps (to avoid complex authorization).
- **Webhook Considerations:** (Optional) Webhooks event on changes to a
  repository requires admin access to repos and are not implemented by default
  due to setup complexity.
- **Repository Polling:** Periodically polls commit history of repositories
  added to the system every 1h.
- **Rate Limiting:** Respects GitHub API rate limits by pausing and resuming
  workers via communication channels.
- **Robust Worker Model:** Workers handle retries, idempotency, pagination, and
  error handling with acknowledgement only after complete commit fetches.
- **Task Queue:** RabbitMQ used for task processing, chosen over Kafka due to
  simpler setup and suitability for task queues.
- **Database:** PostgreSQL with read replicas for scaling reads and handling
  writes with a connection pool.
- **Docker Compose:** Complete environment setup for DB, RabbitMQ, and services
  for easy prototyping and local development.

---

## System Architecture

![System Architecture Diagram](https://github.com/isongjosiah/github-change-tracker/blob/main/assets/GitHub%20Tracking%20System.png)

- **API Server Instance:** Stateless API servers receive repository URLs, validate them, and enqueue tasks for processing.
- **Scheduler:** Periodically triggers polling tasks for repositories stored in the database, with retry logic for failures.
- **Polling Workers:** Dequeue polling tasks, fetch commit data from GitHub respecting rate limits and redirects, handle pagination and retries.
- **PostgreSQL:** Stores repository metadata and commit history with read replicas for scaling read-heavy queries.
- **RabbitMQ:** Handles task queueing with reliability and acknowledgement semantics.
- **Rate Limit Handling:** Workers coordinate via channels to pause/resume processing when GitHub API rate limits are reached.

---

## User Flow

1. **Repository Addition:**

![Repository Addition Sequence Diagram](https://github.com/isongjosiah/github-change-tracker/blob/main/assets/Add%20Repository%20Seq%20Diagram.png)

- User submits a GitHub repository URL (validated by regex).
- URL / repo owner and name is verified and task pushed to the RabbitMQ queue.
- Worker picks up the task, checks if the repository exists.
- If new, creates a repository record in the DB.
- Triggers subsequent task to commit retrieval queue to fetch commit data using
  the last commit timestamp stored. At the point of creation, this is time.Time{}
- Workers fetch commits from GitHub, handling pagination and redirects.
- Batch insert commits pages and update repository last_fetched within a DB transaction.

2. Scheduled Commit Retrieval:

![Scheduled Commit Retrieval Sequence Diagram](https://github.com/isongjosiah/github-change-tracker/blob/main/assets/Pool%20Commit%20Seq%20Diagram.png)

- The **scheduler** runs periodically to identify repositories needing commit updates.
- It fetches repositories in **batches** from the database.
- Each repository is selected **with a `FOR UPDATE` lock** to ensure exclusive access during scheduling.
- This locking mechanism ensures that the only other operation that modifies a repository — `ResetCommitsFrom` — will **wait** if a commit fetch is already in progress.
- For each selected repository, the scheduler **pushes a `PullCommitsTask`** to the commit queue.
- A **worker** listens to the queue and consumes tasks.
- For each task:
  - The worker **pulls the latest commits** from the Git provider (e.g., GitHub).
  - It performs all write operations within a **single transaction**, which includes:
    - Storing the fetched commits in the database.
    - Updating the `last_fetched` timestamp of the repository.
- This process ensures:
  - **Safe concurrent access** to repository data.
  - **Transactional consistency** during updates.
  - **Scalability** through decoupled scheduling and commit ingestion.

3. Retrieve Repository Commits
   Retrieve commits for a repository with **cursor-based pagination**

#### Endpoint

4. **Retry Mechanism:**

- Scheduler periodically enqueues pull tasks for all repositories.
- Retries failed fetches up to a configured number of attempts.
- Logs errors with context (start index, count) for manual inspection.

5. **Rate Limiting & Coordination:**
   - Workers monitor GitHub API rate limit headers.
   - On hitting limits, workers communicate via channels to pause processing.
   - Processing resumes when rate limits reset.

---

## Why RabbitMQ?

- Easier to set up and manage for task queues compared to Kafka.
- Provides reliable delivery and acknowledgment semantics suited for asynchronous job processing.
- Supports retries and message durability.
- Lightweight and well-supported in Go ecosystem.

---

## Monitoring

To ensure system reliability and observability, the following monitoring stack is integrated:

- **OpenTelemetry:** Instrumentation for tracing and metrics collection across services and workers, providing distributed tracing for task flow and API interactions.
- **Prometheus:** Scrapes metrics exposed by the services, including API response times, worker queue lengths, DB connection pool stats, and GitHub API rate limit usage.
- **Grafana:** Visualization dashboard for Prometheus metrics, enabling real-time monitoring, alerting, and historical analysis.

### Checklist

[] create Docker compose files for system components.
[] setup server.
[] setup OpenTelemetry Collector and services
[] define ERDs.
[] implement endpoint to save repository.
[] implement endpoints to retrieve information
[] implement workers for adding repository
[] implement workers for pulling commit information
[] write tests

---

## Running Locally

Use Docker Compose to bring up the environment:

```bash
docker-compose up
```
