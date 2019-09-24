#!/bin/bash

echo "****************************************"
echo "*** Pushing image to docker hub repo ***"
echo "****************************************"

IMAGE="maven-project"

echo "** login docker hub **"
docker login -u patilume -p $PASS
echo "**** tagging image ****"
docker tag $IMAGE:$BUILD_TAG patilume/$IMAGE:$BUILD_TAG
echo "***** Push image *****"
docker push patilume/$IMAGE:$BUILD_TAG
