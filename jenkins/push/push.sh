#!/bin/bash

echo "***********************"
echo "**** Pushing Image ****"
echo "***********************"

IMAGE="maven-project"

echo "** Logging in **"
docker login -u antounwagdy -p $PASS
echo "** Tagging Image **"
docker tag $IMAGE:$BUILD_TAG antounwagdy/$IMAGE:$BUILD_TAG
echo "** Pushing Image **"
docker push antounwagdy/maven-project:$BUILD_TAG