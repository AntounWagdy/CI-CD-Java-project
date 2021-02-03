#!/bin/bash
echo "************************"
echo "** Building JAR *******"
echo "************************"


# $@ means all the parameters concatenated 

docker run --rm -ti -v "$PWD/java_app":/app -v "$PWD/maven-plugins":/root/.m2 -w /app maven:3-alpine "$@"