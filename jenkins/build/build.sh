#!/bin/bash

# Remember the location where this script is going to be build from
# copy the new jar file 
cp -f java_app/target/*.jar jenkins/build/

echo "*********************************"
echo "***** Building docker Image *****"
echo "*********************************"

cd jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache
