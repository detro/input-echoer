#!/usr/bin/env bash

IMAGE_NAME=$1
echo "Will build image with name: ${IMAGE_NAME}"

IMAGE_VERSION=$(cargo pkgid | grep -o "\d.\d.\d$")
echo "Will build image with version ${IMAGE_VERSION}"

docker build \
  --pull --cache-from "${IMAGE_NAME}" \
  --tag "${IMAGE_NAME}:latest" \
  --tag "${IMAGE_NAME}:${IMAGE_VERSION}" \
  .

docker images