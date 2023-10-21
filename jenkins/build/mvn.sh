#!/bin/bash

echo "****************************************"
echo "******BUILDING THE JAR *****************"
echo "****************************************"

WORKSPACE=/home/ubuntu/jenkins-data/jenkins-home/jenkins_home/workspace/pipeline-docker-maven
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2/ -w /app maven:3.8.6-openjdk-11-slim "$@"

