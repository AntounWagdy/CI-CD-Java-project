#!/bin/bash
echo "************************"
echo "** Building JAR *******"
echo "************************"


# $@ means all the parameters concatenated 
$WDR = "/media/antoun/0E4907C20E4907C2/Courses/[DesireCourse.Net] Udemy - Jenkins, From Zero To Hero Become a DevOps Jenkins Master/project/pipeline"

docker run --rm -v "$WDR/java_app":/app -v "$WDR/maven-plugins":/root/.m2 -w /app maven:3-alpine "$@"