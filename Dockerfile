FROM alpine:3.10.2

ADD target/release/input-echoer .

ENTRYPOINT ["./input-echoer"]


