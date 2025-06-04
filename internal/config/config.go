package config

import (
	"log"
	"sync"

	"github.com/caarlos0/env/v6"
	"github.com/joho/godotenv"
)

var (
	config = new(Config)
	once   sync.Once
)

// Config holds the application's configuration parameters,
// typically loaded from environment variables.
type Config struct {
	// GithubToken contains the authentication token for the GitHub REST API.
	// If a token is not provided, the server will still run but with a shorter
	// rate limit for GitHub API requests
	GithubToken string `env:"GITHUB_TOKEN,unset"`

	// HttpPort defines the port on which the server should listen for incoming HTTP requests.
	//  If not explicitly set, it defaults to 8080.
	HttpPort int `env:"HTTP_PORT" envDefault:"8080"`

	// DatabaseUrl contains the connection string for the database.
	DatabaseUrl string `env:"DATABASE_URL,required,notEmpty,unset"`

	// MaximumDBConn specifies the maximum number of open connections to the database.
	MaximumDBConn int `env:"MAX_DB_CONNECTION" envDefault:"10"`

	// RMQUrl contains the connection string for the RabbitMQ (or other AMQP) server.
	RMQUrl string `env:"RMQ_URL,required,notEmpty,unset"`

	Version        string
	Environment    string
	JaegerEndpoint string
}

// LoadConfig initializes the application's configuration by attempting to load
// environment variables from a .env file and then parsing them into the Config struct.
// It uses a sync.Once guarantee that the configuration is loaded only once across
// the application's lifecycle, providing a singleton instance.
//
// If a .env file is found, its variables are loaded. An error during .env loading
// is logged but does not stop the application, as environment variables might be
// provided directly (e.g., in a production Docker container).
//
// If parsing environment variables fails (e.g., due to missing required variables),
// the application will log a fatal error and exit.
//
// Returns a pointer to the singleton Config instance.
func LoadConfig() *Config {
	once.Do(func() {
		if loadErr := godotenv.Load(".env"); loadErr != nil {
			log.Println("Error loading .env file - Ignore on Prod " + loadErr.Error())
		}

		// Parse environment variables to config file
		if err := env.Parse(config); err != nil {
			log.Fatalf("%+v", err)
		}
	})

	return config
}
