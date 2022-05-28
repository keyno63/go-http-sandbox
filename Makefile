.PHONY: lint

build:
	go build cmd/app.go

getgolangci:
	cd tools && go install github.com/golangci/golangci-lint/cmd/golangci-lint

lint:
	golangci-lint run
