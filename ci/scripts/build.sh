#!/bin/bash

echo "And we are building new docker images! Awesome!"

IMAGE_NAME=${BUILDKITE_DOCKER_IMAGE_NAME:-myapp}

# TAG=$(echo $BUILDKITE_BUILD_ID | tr -d '-')

docker build -t $IMAGE_NAME:$BUILDKITE_BUILD_ID .

docker images

docker ps -a
