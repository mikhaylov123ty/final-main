FROM golang:1.20

WORKDIR /usr/src/app

COPY . .

RUN go mod download

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

RUN  go build -o /sp12_final-main

CMD ["/sp12_final-main"]