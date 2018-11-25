FROM jenkins/jenkins:lts

LABEL maintainer="hello@pandaclouds.com"

ARG DOCKER_CLIENT="docker-18.09.0.tgz"

USER root
# From https://forums.docker.com/t/using-docker-in-a-dockerized-jenkins-container/322/10
RUN cd /tmp/ \
&& curl -sSL -O https://download.docker.com/linux/static/stable/x86_64/${DOCKER_CLIENT} \
&& tar zxf ${DOCKER_CLIENT} \
&& mkdir -p /usr/local/bin \
&& mv ./docker/docker /usr/local/bin \
&& chmod +x /usr/local/bin/docker \
&& rm -rf /tmp/*

USER jenkins
