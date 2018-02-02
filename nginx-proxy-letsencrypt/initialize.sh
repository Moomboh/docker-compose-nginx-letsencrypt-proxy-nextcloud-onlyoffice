#!/bin/bash

# create the webproxy network used by all containers which have to be proxied
docker network create webproxy

#get the latest nginx.tmpl for the jwilder/nginx-proxy
curl https://raw.githubusercontent.com/jwilder/nginx-proxy/master/nginx.tmpl > nginx.tmpl
