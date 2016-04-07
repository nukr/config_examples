#!/bin/bash

CONF_DIR=$(dirname $0)
cd ${CONF_DIR}
CONF_DIR=$(pwd)

docker run \
       -d \
       -p 80:80 \
       -v ${CONF_DIR}/reverse-proxy.conf:/etc/nginx/conf.d/reverse-proxy.conf \
       nginx:alpine
