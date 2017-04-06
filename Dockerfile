FROM golang:1.8
COPY . /go
RUN go install github.com/japsu/hello
CMD ["bin/hello"]
