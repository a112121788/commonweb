#!/bin/sh

#TAG=$(git rev-parse --short HEAD)
TAG=$(date "+%Y%m%d%H%M%S") \
&& docker build -f Dockerfile.prod -t commonweb_pod:${TAG} . \
&& echo "commonweb_pod:${TAG}"
