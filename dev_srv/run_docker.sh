#!/usr/bin/env bash
sudo docker run -it -h coap_srv --name coap_srv_box --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix coap_srv:latest
