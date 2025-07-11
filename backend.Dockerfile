FROM golang AS builder
WORKDIR /src/backend/
COPY backend/ /src/backend/
RUN CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -o backend-executable main.go

FROM scratch
WORKDIR /bin/
COPY ./backend/static/ /bin/static/
COPY --from=builder /src/backend/backend-executable /bin/backend-executable
CMD ["./backend-executable"]
