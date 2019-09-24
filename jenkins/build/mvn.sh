#!/bin/bash

echo "**************************************"
echo "**** Building JAR ******"
echo "**************************************"

WORKSPACE=jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v $WOEKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
