#!/bin/bash -x

cd /tmp
mv something.bin jdk-1_5_0_22-linux-amd64.bin
chmod a+x jdk-1_5_0_22-linux-amd64.bin
./jdk-1_5_0_22-linux-amd64.bin < answer.txt
mv ./jdk1.5.0_22/* /usr/java

mkdir -p /opt/ant
curl http://archive.apache.org/dist/ant/binaries/apache-ant-1.6.0-bin.tar.gz -o /tmp/apache-ant-1.6.0-bin.tar.gz
tar -xf apache-ant-1.6.0-bin.tar.gz -C /opt/ant --strip-components 1
