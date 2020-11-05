#!/bin/bash

docker build . -t mynteye

docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --privileged -v /dev/bus/usb:/dev/bus/usb mynteye bash

