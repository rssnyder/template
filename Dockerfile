FROM golang:1.19

WORKDIR /go/src/template

COPY app/ .

RUN go build

ENTRYPOINT ["/go/src/template/app"]