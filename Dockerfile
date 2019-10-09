FROM alpine:3.10.2

WORKDIR /opt/input-echoer

ADD target/release/input-echoer .

ENTRYPOINT ["./input-echoer"]


