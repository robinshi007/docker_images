FROM golang:alpine
MAINTAINER Robin Shi <robinshi@outlook.com>

RUN apk add --update bash git && rm -rf /var/cache/apk/*
RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server

ENV SS_SERVER_ADDR 0.0.0.0
ENV SS_SERVER_PORT 8388
ENV SS_PASSWORD    password
ENV SS_METHOD      aes-256-cfb
ENV SS_TIMEOUT     300

EXPOSE $SS_SERVER_PORT

ADD start.sh /start.sh
RUN chmod 755 /start.sh

CMD ["bash", "-c", "/start.sh"]
