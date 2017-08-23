# DESCRIPTION:    commons-jelly-build-env
# SOURCE:         https://github.com/chtompki/Dockerfiles/tree/master/commons-jelly-build-env

FROM library/ubuntu:12.04

RUN apt-get -qq update && apt-get install -y curl wget pgp subversion

RUN mkdir -p /usr/java

ADD something.bin /tmp
ADD answer.txt /tmp
ADD install.sh /tmp

RUN chmod +x /tmp/install.sh && sh /tmp/install.sh

ENV JAVA_HOME=/usr/java
ENV PATH=${PATH}:${JAVA_HOME}/bin:/opt/ant/bin