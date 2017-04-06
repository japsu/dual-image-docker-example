#!/bin/bash
set -xe
mkdir -p bin
docker build --tag japsu/hello-build .
docker run --rm japsu/hello-build tar -c bin/hello | tar -xv
chmod 755 bin/hello
docker build --tag japsu/hello --file Dockerfile.production .
