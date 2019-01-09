FROM debian:7-slim

LABEL maintainer Nidhal Arouri <arouri.nidhal@gmail.com>

RUN apt-get update && apt-get install -y openssh-server git

VOLUME /git
WORKDIR /git
