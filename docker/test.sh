#!/usr/bin/env bash

IMAGE_NAME="litecoin"

# Note: running and mapping a local volume just for test
docker run -v "${PWD}/../data:/home/litecoin/.litecoin" --rm "$IMAGE_NAME"


