.PHONY: lint

build:
	go build cmd/app.go

test:
	go test -v -count=1 -race -cover ./...

getgolangci:
	cd tools && go install github.com/golangci/golangci-lint/cmd/golangci-lint

lint: getgolangci
	golangci-lint run
