#!/bin/bash

BUILD_TAG=10
PASS=rakhimindplm

echo "maven-project" > /tmp/.auth
echo "$BUILD_TAG" >> /tmp/.auth
echo "$PASS" >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod-user@18.224.44.36:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish prod-user@18.224.44.36:/tmp/publish
ssh -i /opt/prod  prod-user@18.224.44.36 "/tmp/publish"

