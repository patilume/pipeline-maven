#!/bin/bash

echo "**************************************"
echo "**** Building JAR ******"
echo "**************************************"

WORKSPACE=jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v var/jenkins_home/workspace/pipeline-docker-maven/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
