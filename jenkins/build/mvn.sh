#!/bin/bash

echo "****************************************"
echo "******BUILDING THE JAR *****************"
echo "****************************************"

docker run --rm -v $PWD/java-app:/app -v /root/.m2:/root/.m2/ -w /app maven:3.8.6-openjdk-11-slim "$@"

