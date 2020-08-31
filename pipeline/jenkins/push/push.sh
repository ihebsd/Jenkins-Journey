#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u ihebsd1997 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG ihebsd1997/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push ihebsd1997/$IMAGE:$BUILD_TAG

