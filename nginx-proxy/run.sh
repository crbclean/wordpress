#!/bin/sh

# host-port:docker-port

docker run -d \
    --name=nginx-proxy-manager \
    -p 8181:8181 \
    -p 80:8080 \
    -p 443:4443 \
    -v /home/florian/repo/crb/docker-proxy:/config:rw \
    jlesage/nginx-proxy-manager