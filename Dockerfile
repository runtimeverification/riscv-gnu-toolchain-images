# Save time and space on private runners per build and reference our base image 
#    it has all of this already installed.  
# FROM dockerhub-runtimeverification.com/base/build-image:1
# Otherwise for use on Public runners
FROM ubuntu:jammy

# Installing some basics regularly used in ecosystem & cleaning up per recommended best practices for image reduction
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive  apt-get install --yes \
    build-essential \
    cmake \
    curl \
    git \
    make \
    python2 \
    python3 \
    python3-pip \
&& rm -rf /var/lib/apt/lists/*
RUN pip3 install virtualenv websockets
    