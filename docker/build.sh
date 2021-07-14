#!/usr/bin/env bash

# Note: 
# Using https://github.com/uphold/docker-litecoin-core as base image
# Pulling from docker public registry

set -e # Stop on errors

IMAGE="uphold/litecoin-core"
IMAGE_NAME="litecoin"

# Here you set the target sha256 to match
SHA256="sha256:fb3148b0ca9fb3075ea7670c1690d4fa8bcf323d72a4c7192d8da235d95ee994"

# Delete image to start from scratch
echo "Cleaning up old images (if any)..."
docker image ls --format '{{.Repository}}:{{.Tag}}' $IMAGE | xargs docker image rm > /dev/null

# Pulling image from registry
echo "Pulling image..."
docker pull "$IMAGE:0.18.1"

# Get image sha256
image_sha="$(docker image ls --digests --format '{{.Digest}}' uphold/litecoin-core)"

# Verifying image sha256
echo "Image sha256 => $image_sha"
echo "Target value => $SHA256"
if [ "$image_sha" != "$SHA256" ]; then
    echo "SHA256 do not match, aborting!"
    exit 1
else
    echo "SHA256 match!"
fi

# Building image using Dockerfile
docker build . -t "$IMAGE_NAME"

# Security check for image using grype
# Note: 
# - using local .grype.yaml file to config behaviour
# - it will stop on critical CVE
echo "Security Scan..."
grype "$IMAGE_NAME"

echo "Done."

# Note: running and mapping a local volume just for test
#docker run -v "${PWD}/../data:/home/litecoin/.litecoin" --rm "$IMAGE_NAME"


