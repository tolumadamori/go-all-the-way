FROM golang:1.20.1-alpine3.17

COPY . /go/src/go-all-the-way

WORKDIR /go/src/go-all-the-way

COPY go.mod ./

RUN go mod vendor

RUN go mod download

COPY . .

RUN go mod tidy

RUN go build -o /go-all-the-way

EXPOSE 8080

CMD [ "/go-all-the-way" ]