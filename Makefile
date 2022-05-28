.PHONY: lint

build:
	go build cmd/app.go

lint:
	golangci-lint run
