FROM rust:alpine

# Copy source into image for compilation
WORKDIR /compilation_dir
COPY . .

# Compile and install release version
RUN cargo install --path .

# Cleanup source
WORKDIR /
RUN rm -rf /compilation_dir

ENTRYPOINT ["input-echoer"]


