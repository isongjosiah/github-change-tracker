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
- **Robust Worker Model:** Workers handle retries, idempotency, pagination, and
  error handling with acknowledgement only after complete commit fetches.
- **Task Queue:** RabbitMQ used for task processing, chosen over Kafka due to
  simpler setup and suitability for task queues.
- **Database:** PostgreSQL.
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

3. Queries
   You can explore and test the API using the Postman collection here:  
   [🔗 View Postman Collection](https://elements.getpostman.com/redirect?entityId=29631323-333ab8be-5550-4eda-83dc-342eef9c567e&entityType=collection)

4. Improvements

### 1. 🔁 Robust Retry Mechanism

- Enhance the scheduler to **periodically re-enqueue pull tasks** for repositories that failed in previous attempts.
- Implement a **bounded retry strategy** (e.g., exponential backoff) with a configurable maximum number of retries per repository.
- Improve observability by **logging failures with context**, such as batch start index and size, to support manual debugging and recovery.

### 3. 📈 Monitoring & Observability Stack

To ensure operational insight and rapid troubleshooting:

- **OpenTelemetry**: Add tracing spans and metrics to all major operations (task scheduling, queue processing, DB interactions) for full observability.
- **Prometheus**: Export key metrics such as:
  - Queue sizes and task throughput.
  - API response times and error rates.
  - DB connection pool usage.
  - GitHub API usage and remaining quota.
- **Grafana Dashboards**:
  - Build visual dashboards to monitor system health and performance.
  - Set up **alerts** for key thresholds (e.g., high task failure rate, API quota exhaustion, DB latency spikes).

These improvements would increase the platform’s **resilience**, **scalability**, and **developer visibility**, making it production-grade and easier to operate.

---

## Running Locally

Use Docker Compose to bring up the environment:

```bash
cd deployments
docker-compose up
```

---

## Running Tests

Use Docker Compose to bring up the environment:

```bash
make generate
go test -v ./...
```
