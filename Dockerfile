FROM ubuntu:22.04

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    iproute2 \
    iputils-ping \
    netcat-openbsd \
 && apt-get -y clean \
 && rm -rf /var/lib/apt/lists/*

