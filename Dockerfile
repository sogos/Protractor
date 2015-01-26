# Dockerfile for rundeck

FROM debian:wheezy

MAINTAINER Thibault CORDIER

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update && apt-get -qqy upgrade && apt-get -qqy install --no-install-recommends wget vim
RUN wget --no-check-certificate https://deb.nodesource.com/setup -O /root/setup_node_js
RUN /bin/bash /root/setup_node_js > /dev/null
RUN apt-get -qq update && apt-get -qqy upgrade && apt-get -qqy install --no-install-recommends nodejs  build-essential && apt-get clean
RUN npm install -g protractor

VOLUME ["/tmp"]

# Start Supervisor
ENTRYPOINT ["/bin/bash"]
