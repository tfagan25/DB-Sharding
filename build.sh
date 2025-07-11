#!/bin/bash

# $1 => Image tag

TAG_VERSION=$1

if [[ -z $1 ]]; then
    TAG_VERSION="v1.0.0"
fi

docker build -f backend.Dockerfile -t "db-sharding-backend:$TAG_VERSION" .