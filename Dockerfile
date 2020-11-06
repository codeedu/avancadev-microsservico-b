FROM golang:1.15

WORKDIR /go/src/fullcycle

COPY . .

RUN GOOS=linux go build -o fullcycle
RUN ls -la
EXPOSE 9091

ENTRYPOINT [ "./fullcycle" ]