FROM golang:1.18-alpine as builder

WORKDIR /go/src/app
COPY . .

RUN go mod tidy
RUN go mod download
RUN go mod verify
RUN go build -o main

EXPOSE 8080
CMD ["./main"]