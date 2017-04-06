# Dual-image Docker example

This repository illustrates a pattern where you use a large Docker image (with build tools etc.) to build an artifact which you then copy to a small image.

This repository uses Go, but you might do a similar exercise with eg. Java.

## Requirements

* Docker (tested: 17.03 CE)
* Docker Compose (tested: 0.11.2)

## Develop

    docker-compose up

## Build production image

    ./build.sh

Try out the production image:

    docker run --rm japsu/hello
