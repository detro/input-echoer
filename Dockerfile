FROM rust:alpine

ADD target/release/input-echoer /usr/local/bin/input-echoer

CMD ["input-echoer"]


