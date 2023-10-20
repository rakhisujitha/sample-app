#!/bin/bash

BUILD_TAG="10"

cp -f java-app/target/*.jar jenkins/build/

echo "************************************"
echo "*****building the docker images*****"
echo "************************************"

export BUILD_TAG 

cd jenkins/build/ 

docker-compose -f docker-compose-build.yml build --no-cache
