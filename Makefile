fmt:
	gofmt -w -s .

test:
	go test -v ./src -race -cover -coverprofile=coverage.out .

cover:
	go tool cover -func=coverage.out

lint:
	go vet -v ./src
	golangci-lint run
