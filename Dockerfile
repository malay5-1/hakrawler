FROM golang:1.20.1-buster


WORKDIR /go/src/hakrawler
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

ENTRYPOINT ["hakrawler"]
