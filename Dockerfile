FROM alpine:3.10.2

ADD target/release/input-echoer /usr/local/bin/input-echoer

CMD ["input-echoer"]


