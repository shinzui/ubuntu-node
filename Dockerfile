FROM ubuntu:16.04
MAINTAINER Nadeem Bitar

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
                                   apt-get install -y --no-install-recommends curl ca-certificates && \
                                   rm -rf /var/lib/apt/lists/*
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs
