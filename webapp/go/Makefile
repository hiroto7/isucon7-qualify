GOPATH := ${PWD}
export GOPATH

build:
	go get github.com/go-redis/redis/v9
	GOOS=linux GOARCH=amd64 go build -v isubata

vet:
	go vet ./src/isubata/...
