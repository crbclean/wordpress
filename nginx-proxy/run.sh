#!/bin/sh

docker run -d \
    --name=nginx-proxy-manager \
    -p 8181:8181 \
    -p 8080:8080 \
    -p 4443:4443 \
    -v /home/florian/repo/crb/docker-proxy:/config:rw \
    jlesage/nginx-proxy-manager