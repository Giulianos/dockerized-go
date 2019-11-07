SRC=main.go
IMAGE_NAME=giulianos/dockerized-go

build: $(SRC)
	env GOOS=linux GOARCH=amd64 go build $(SRC)

dockerize: build
	docker build -t $(IMAGE_NAME) .

.PHONY: build dockerize
