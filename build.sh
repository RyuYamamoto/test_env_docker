#!/bin/sh

if [ "$1" = "" ]; then
	echo "please specify docker image name."
	exit 1
else
	DOCKER_IMAGE_NAME=$1
fi

if [ "$2" = "" ]; then
	echo "please specify docker file path."
	exit 1
else
	DOCKER_FILE_PATH=$2
fi

sudo docker build -t $DOCKER_IMAGE_NAME -f $DOCKER_FILE_PATH .
