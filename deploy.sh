#!/bin/bash
set -ex

docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
build="multibuild/xenial_$PLATFORM"
docker tag ${build}:${TRAVIS_COMMIT} ${tag}:latest
docker push ${build}:latest
docker push ${build}:${TRAVIS_COMMIT}
