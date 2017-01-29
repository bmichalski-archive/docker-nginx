#!/bin/bash

NGINX_EXISTS=`docker inspect --format="{{ .Id }}" nginx 2> /dev/null`

if ! [ -z "$NGINX_EXISTS" ]
then
  docker kill nginx
  docker rm nginx
fi

docker run \
  -p 80 \
  --name nginx \
  -it \
  bmichalski/nginx \
  bash

