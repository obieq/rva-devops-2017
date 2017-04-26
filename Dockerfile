FROM golang:1.8.0-alpine

WORKDIR /go/src/github.com/obieq/rva-devops-2017
ADD . /go/src/github.com/obieq/rva-devops-2017/

RUN go install

# web runs on 80
EXPOSE 80
CMD /go/bin/rva-devops-2017
