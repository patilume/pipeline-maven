#!/bin/bash

echo maven-project > /tmp/.auth

echo $BUILD_TAG >> /tmp/.auth

echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod-user@54.173.145.107:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh prod-user@54.173.145.107:/tmp/publish.sh
ssh -i /opt/prod prod-user@54.173.145.107 "/tmp/publish.sh"
