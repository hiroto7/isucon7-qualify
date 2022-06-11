#GOPATH := ${PWD}
#export GOPATH

build: vet
	GOOS=linux GOARCH=amd64 go build -o isubata -v src/isubata/app.go

vet:
	go vet ./src/isubata/...
