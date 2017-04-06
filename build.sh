#!/bin/bash
set -xe
mkdir -p bin
docker build --tag japsu/hello-build .
docker run --rm japsu/hello-build tar -c bin/hello | tar -xv
docker build --tag japsu/hello --file Dockerfile.production .
