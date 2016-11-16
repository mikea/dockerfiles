#!/bin/sh

# may need running "xhost +" on a host.
docker build -t coqide . && docker run -ti -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $PWD:/workspace coqide
