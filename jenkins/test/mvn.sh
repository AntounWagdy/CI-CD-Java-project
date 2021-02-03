#!/bin/bash
echo "************************"
echo "** Testing Code *******"
echo "************************"


# $@ means all the parameters concatenated 

docker run --rm -v "$PWD/java_app":/app -v "$PWD/maven-plugins":/root/.m2 -w /app maven:3-alpine "$@"