COUNTERFEITER      := $(shell command -v counterfeiter 2> /dev/null)
STRINGER 					:= $(shell command -v stringer 2> /dev/null)

get/stringer:
ifndef STRINGER
	@echo "installing stringer"
	@go get -u -a golang.org/x/tools/cmd/stringer
endif

get/counterfeiter:
ifndef COUNTERFEITER
	@echo "installing counterfeiter"
	@go get -u github.com/maxbrunsfeld/counterfeiter/v6
endif

generate: get/counterfeiter get/stringer
	go generate ./...

run:
	go run main.go

watch:
	ulimit -n 1000 #increase the file watch limit, might required on MacOS
	reflex -s -r '\.go$$' make run
migration-file:
	goose -dir db/gmigrations/ create $(name) sql
