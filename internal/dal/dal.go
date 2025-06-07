package dal

import (
	"context"
	"database/sql"
	"fmt"
	"heimdall/internal/config"
	"heimdall/internal/dal/model"
	"heimdall/internal/dal/repositories"
	"log"
	"os"
	"sync"
	"time"

	"github.com/pressly/goose"
	"github.com/uptrace/bun"
	"github.com/uptrace/bun/dialect/pgdialect"
	"github.com/uptrace/bun/driver/pgdriver"
	"github.com/uptrace/bun/extra/bundebug"
)

// DAL represents the Data Access Layer, encapsulating database connections
// and providing interfaces to interact with different data entities.
type DAL struct {
	// SqlDB is the Bun DB client for interacting with the PostgreSQL database.
	SqlDB   *bun.DB
	Commit  repositories.IRepositoryCommit
	GitRepo repositories.IGitRepository
}

// connectSQLDAL establishes a connection to the PostgreSQL database using the provided configuration.
// It sets up connection pool parameters and adds a query hook for debugging in non-production environments.
func connectSQLDAL(config *config.Config) *bun.DB {
	// Create a new PostgreSQL connector with the DSN from the configuration and open a standard SQL database connection.
	connector := pgdriver.NewConnector(pgdriver.WithDSN(config.DatabaseUrl))
	sqlDB := sql.OpenDB(connector)

	// Configure the connection pool.
	sqlDB.SetMaxOpenConns(config.MaximumDBConn)
	sqlDB.SetMaxIdleConns(2)
	sqlDB.SetConnMaxIdleTime(time.Second * 2)

	// Create a new Bun DB instance from the standard SQL DB.
	// Uses pgdialect for PostgreSQL-specific features.
	// bun.WithDiscardUnknownColumns helps in ignoring columns present in DB but not in struct.
	conn := bun.NewDB(sqlDB, pgdialect.New(), bun.WithDiscardUnknownColumns())

	if os.Getenv("ENVIRONMENT") != "live" && os.Getenv("ENVIRONMENT") != "production" {
		conn.AddQueryHook(bundebug.NewQueryHook(bundebug.WithVerbose(true)))
	}
	if err := conn.Ping(); err != nil {
		log.Fatal("failed to setup db")
	}

	return conn
}

// CreateTables iterates through a list of model structs and creates
// corresponding tables in the database if they do not already exist.
func CreateTables(Conn *bun.DB) error {
	// Define the list of models for which tables should be created.
	models := []any{
		&model.Commit{},
		&model.Repository{},
	}

	var wg sync.WaitGroup
	errors := make(chan error, len(models))

	for _, model := range models {
		wg.Add(1) // Increment the WaitGroup counter for each goroutine.

		// Launch a goroutine for each table creation.
		go func(m any) {
			defer wg.Done() // Decrement the counter when the goroutine finishes.

			log.Printf("Attempting to create table for model: %T", m)
			_, err := Conn.NewCreateTable().
				IfNotExists().
				Model(m).Exec(context.Background())
			if err != nil {
				log.Printf("Error creating table for %T: %v", m, err)
				errors <- fmt.Errorf("failed to create table for %T: %w", m, err)
				return
			}
			log.Printf("Successfully ensured table exists for model: %T", m)
		}(model)
	}

	wg.Wait()
	close(errors)

	// Check if any errors occurred during table creation and return the first error encountered.
	for err := range errors {
		if err != nil {
			return err
		}
	}
	return nil
}

// TableIndex defines the structure for specifying an index to be created.
type TableIndex struct {
	// IndexName is the name of the index. If empty, Bun generates one.
	IndexName string
	// Columns are the names of the columns to include in the index.
	Columns []string
	// Unique indicates if this should be a unique index.
	Unique bool
}

// CreateIndex iterates through a predefined list of indexes and creates them
// in the database if they do not already exist.
func CreateIndex(Conn *bun.DB) error {
	// Define all indexes to be created.
	// Keys are pointers to the model structs, values are TableIndex definitions.
	indexesToCreate := map[any][]TableIndex{
		&model.Repository{}: {
			{
				IndexName: "idx_repositories_url_unique", // Explicitly name the index
				Columns:   []string{"url"},
				Unique:    true, // Enforce uniqueness for repository URLs
			},
		},
		&model.Commit{}: {
			{
				IndexName: "idx_commits_repo_id", // Index for filtering by repository ID
				Columns:   []string{"repo_id"},
				Unique:    false,
			},
		},
	}

	var wg sync.WaitGroup
	errors := make(chan error, len(indexesToCreate)*2)

	// Iterate over each model and its associated indexes.
	for modelInstance, indexes := range indexesToCreate {
		for _, mIndex := range indexes {
			if len(mIndex.Columns) == 0 {
				log.Printf("Skipping index creation for %T: no columns specified for index %s", modelInstance, mIndex.IndexName)
				continue
			}
			if mIndex.IndexName == "" {
				log.Printf("Warning: Index name not provided for %T on columns %v. Bun will generate a name.", modelInstance, mIndex.Columns)
			}

			wg.Add(1)

			go func(m any, index TableIndex) {
				defer wg.Done()

				log.Printf("Attempting to create index '%s' on columns %v for model: %T", index.IndexName, index.Columns, m)

				query := Conn.NewCreateIndex().
					IfNotExists().
					Model(m).
					Column(index.Columns...)

				if index.IndexName != "" {
					query = query.Index(index.IndexName)
				}
				if index.Unique {
					query = query.Unique()
				}

				_, err := query.Exec(context.Background())
				if err != nil {
					log.Printf("Error creating index '%s' for %T on columns %v: %v", index.IndexName, m, index.Columns, err)
					errors <- fmt.Errorf("failed to create index '%s' for %T on columns %v: %w", index.IndexName, m, index.Columns, err)
					return
				}
				log.Printf("Successfully ensured index '%s' exists for model: %T on columns %v", index.IndexName, m, index.Columns)
			}(modelInstance, mIndex)
		}
	}

	wg.Wait()
	close(errors)

	// Check for any errors that occurred during index creation.
	for err := range errors {
		if err != nil {
			return err // Return the first error encountered.
		}
	}
	return nil // Return nil if all indexes were created successfully or already existed.
}

// MigrateDB applies all *.up.sql migrations to the current database
func MigrateDB(cfg *config.Config) error {
	databaseURL := os.Getenv("DATABASE_URL")
	sqlDB := sql.OpenDB(pgdriver.NewConnector(pgdriver.WithDSN(databaseURL)))
	defer sqlDB.Close()

	// set dialect to postgreSQL
	if err := goose.SetDialect("postgres"); err != nil {
		return fmt.Errorf("[goose]: failed to set dialect for migration: %w", err)
	}

	// do Up migrations
	if err := goose.Up(sqlDB, "dal/gmigrations"); err != nil {
		return fmt.Errorf("[goose]: failed to apply migrations: %w", err)
	}

	return nil
}

// NewDAL initializes a new Data Access Layer instance.
// It establishes the database connection, creates necessary tables,
// and then sets up the concrete implementations of DAL interfaces (CommitDAL, GitRepositoryDAl).
//
// This function ensures that the database schema is prepared before the application
// starts handling requests that rely on these tables and indexes.
func NewDAL(cfg *config.Config) *DAL {
	// Establish the connection to the SQL database.
	sqlDB := connectSQLDAL(cfg)

	// Ping the database to ensure the connection is live.
	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()
	if err := sqlDB.PingContext(ctx); err != nil {
		log.Fatalf("Failed to ping database: %v", err)
	}
	log.Println("Successfully connected to the database.")

	// Create tables if they do not exist.
	if err := CreateTables(sqlDB); err != nil {
		log.Fatalf("Failed to create database tables: %v", err)
	}
	log.Println("Ensured all necessary database tables exist.")

	// Create indexes if they do not exist to optimize query performance.
	if err := CreateIndex(sqlDB); err != nil {
		log.Fatalf("Failed to create database indexes: %v", err)
	}
	log.Println("Ensured all necessary database indexes exist.")

	// Return the initialized DAL instance with concrete implementations for sub-DALs.
	commitDAL := NewRepositoryCommitStorage(sqlDB)
	return &DAL{
		SqlDB:   sqlDB,
		Commit:  commitDAL,
		GitRepo: NewGitRepoStorage(sqlDB, commitDAL),
	}
}
