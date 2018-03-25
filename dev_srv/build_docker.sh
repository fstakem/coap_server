#!/usr/bin/env bash

sudo docker build -t coap_srv --rm . || sudo docker rmi -f $(sudo docker images --filter "dangling=true" -q --no-trunc)
