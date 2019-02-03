FROM golang:1.4.2
LABEL maintainer="aonrobotz@gmail.com"

ADD . /go/src/github.com/JustinBeckwith/revel-appengine

RUN go get github.com/revel/revel
RUN go get github.com/revel/cmd/revel

ENTRYPOINT revel run github.com/JustinBeckwith/revel-appengine dev 8080

EXPOSE 8080
