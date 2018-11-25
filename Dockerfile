# To specifiy a version use
# docker build . --build-arg version=lts

ARG version=lts

LABEL maintainer="hello@pandaclouds.com"

FROM jenkins/jenkins:$version

ARG DOCKER_CLIENT="docker-18.09.0.tgz"

RUN cd /tmp/ 
&& curl -sSL -O https://download.docker.com/linux/static/stable/x86_64/${DOCKER_CLIENT} \
&& tar zxf ${DOCKER_CLIENT} \
&& mkdir -p /usr/local/bin \
&& mv ./docker/docker /usr/local/bin \
&& chmod +x /usr/local/bin/docker \
&& rm -rf /tmp/*

