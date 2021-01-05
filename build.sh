#!/bin/sh

#TAG=$(git rev-parse --short HEAD)
TAG=$(date "+%Y%m%d%H%M%S") \
&& docker build -f Dockerfile.prod -t commonweb_pod:${TAG} . \
&& docker tag commonweb_pod:${TAG} a112121788/commonweb_pod:${TAG} \
&& docker push a112121788/commonweb_pod:${TAG} \
&& echo "commonweb_pod:${TAG}"

# docker tag commonweb_pod:20210105091829 a112121788/commonweb_pod:20210105091829
# docker push a112121788/commonweb_pod:20210105091829