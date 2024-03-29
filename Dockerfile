FROM golang:1.16-alpine
WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /pd-workshop-01

EXPOSE 8080

CMD [ "/pd-workshop-01" ]