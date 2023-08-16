FROM ubuntu:16.04

RUN \
  apt-get update -y && \
  apt-get install -y \
    nginx

CMD service nginx start && tail -f /var/log/nginx/*.log
