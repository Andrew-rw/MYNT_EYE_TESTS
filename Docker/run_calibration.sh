#!/bin/bash

if [[ "$(docker images -q mynteye 2> /dev/null)" == "" ]]; then
	docker build . -t mynteye
fi

xhost +

docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --privileged -v /dev/bus/usb:/dev/bus/usb mynteye bash

