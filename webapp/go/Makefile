GOPATH := ${PWD}
export GOPATH

build:
	GOOS=linux GOARCH=amd64 go build -v isubata

vet:
	go vet ./src/isubata/...
