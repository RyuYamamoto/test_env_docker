#!/bin/bash

XAUTH=/run/user/1000/gdm/Xauthorit

if [ "$1" = "" ]; then
	echo "please specify image name"
	exit 1
else
	IMAGE_NAME=$1
fi

sudo docker run -it --rm \
    --runtime=nvidia \
    -e DISPLAY=$DISPLAY \
    -e QT_X11_NO_MITSHM=1 \
    -e XAUTHORITY=$XAUTH \
    -v /tmp/.X11-unix/:/tmp/.X11-unix:rw \
    $IMAGE_NAME
