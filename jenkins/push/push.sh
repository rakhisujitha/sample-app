#!/bin/bash

echo "********************"
echo "***pushing image****"
echo "********************"

IMAGE="maven-project"
BUILD_TAG="10"

echo "***loging in *******"
docker login -u rakhiammu -p rakhimindplm

echo "****tagging image***"
docker tag $IMAGE:$BUILD_TAG rakhiammu/$IMAGE:$BUILD_TAG

echo "***pushing image****"
docker push rakhiammu/$IMAGE:$BUILD_TAG
