#!/bin/bash

NGINX_PHP_EXISTS=`docker inspect --format="{{ .Id }}" nginx-php 2> /dev/null`

if ! [ -z "$NGINX_PHP_EXISTS" ]
then
  docker kill nginx-php
  docker rm nginx-php
fi
