#!/bin/bash -x

cd /tmp
mv something.bin jdk-1_5_0_22-linux-amd64.bin
chmod a+x jdk-1_5_0_22-linux-amd64.bin
./jdk-1_5_0_22-linux-amd64.bin < answer.txt
mv ./jdk1.5.0_22/* /usr/java

mkdir -p /opt/ant
curl http://archive.apache.org/dist/ant/binaries/apache-ant-1.6.0-bin.tar.gz -o /tmp/apache-ant-1.6.0-bin.tar.gz
tar -xf apache-ant-1.6.0-bin.tar.gz -C /opt/ant --strip-components 1

mkdir -p /root/commons-jelly-1.0

mkdir -p /root/.m2/repository/javax/servlet/servlet-api/2.3
mkdir -p /root/.m2/repository/commons-cli/commons-cli/1.0
mkdir -p /root/.m2/repository/commons-lang/commons-lang/2.0
mkdir -p /root/.m2/repository/commons-discovery/commons-discovery/20030211.213356
mkdir -p /root/.m2/repository/forehead/forehead/1.0-beta-5
mkdir -p /root/.m2/repository/javax/servlet/jstl/1.0.6
mkdir -p /root/.m2/repository/junit/junit/3.8.1
mkdir -p /root/.m2/repository/commons-jexl/commons-jexl/1.0
mkdir -p /root/.m2/repository/xml-apis/xml-apis/1.0.b2
mkdir -p /root/.m2/repository/commons-beanutils/commons-beanutils/1.6
mkdir -p /root/.m2/repository/commons-collections/commons-collections/2.1
mkdir -p /root/.m2/repository/commons-logging/commons-logging/1.0.3
mkdir -p /root/.m2/repository/dom4j/dom4j/1.5.2
mkdir -p /root/.m2/repository/jaxen/jaxen/1.1-beta-4
mkdir -p /root/.m2/repository/xerces/xercesImpl/2.2.1

curl https://search.maven.org/remotecontent?filepath=javax/servlet/servlet-api/2.3/servlet-api-2.3.jar -o /root/.m2/repository/javax/servlet/servlet-api/2.3/servlet-api-2.3.jar
curl https://search.maven.org/remotecontent?filepath=commons-cli/commons-cli/1.0/commons-cli-1.0.jar -o /root/.m2/repository/commons-cli/commons-cli/1.0/commons-cli-1.0.jar
curl https://search.maven.org/remotecontent?filepath=commons-lang/commons-lang/2.0/commons-lang-2.0.jar -o /root/.m2/repository/commons-lang/commons-lang/2.0/commons-lang-2.0.jar
curl https://search.maven.org/remotecontent?filepath=commons-discovery/commons-discovery/20030211.213356/commons-discovery-20030211.213356.jar -o /root/.m2/repository/commons-discovery/commons-discovery/20030211.213356/commons-discovery-20030211.213356.jar
curl https://search.maven.org/remotecontent?filepath=forehead/forehead/1.0-beta-5/forehead-1.0-beta-5.jar -o /root/.m2/repository/forehead/forehead/1.0-beta-5/forehead-1.0-beta-5.jar
curl https://search.maven.org/remotecontent?filepath=javax/servlet/jstl/1.0.6/jstl-1.0.6.jar -o /root/.m2/repository/javax/servlet/jstl/1.0.6/jstl-1.0.6.jar
curl https://search.maven.org/remotecontent?filepath=junit/junit/3.8.1/junit-3.8.1.jar -o /root/.m2/repository/junit/junit/3.8.1/junit-3.8.1.jar
curl https://search.maven.org/remotecontent?filepath=commons-jexl/commons-jexl/1.0/commons-jexl-1.0.jar -o /root/.m2/repository/commons-jexl/commons-jexl/1.0/commons-jexl-1.0.jar
curl https://search.maven.org/remotecontent?filepath=xml-apis/xml-apis/1.0.b2/xml-apis-1.0.b2.jar -o /root/.m2/repository/xml-apis/xml-apis/1.0.b2/xml-apis-1.0.b2.jar
curl https://search.maven.org/remotecontent?filepath=commons-beanutils/commons-beanutils/1.6/commons-beanutils-1.6.jar -o /root/.m2/repository/commons-beanutils/commons-beanutils/1.6/commons-beanutils-1.6.jar
curl https://search.maven.org/remotecontent?filepath=commons-collections/commons-collections/2.1/commons-collections-2.1.jar -o /root/.m2/repository/commons-collections/commons-collections/2.1/commons-collections-2.1.jar
curl https://search.maven.org/remotecontent?filepath=commons-logging/commons-logging/1.0.3/commons-logging-1.0.3.jar -o /root/.m2/repository/commons-logging/commons-logging/1.0.3/commons-logging-1.0.3.jar
curl https://search.maven.org/remotecontent?filepath=dom4j/dom4j/1.5.2/dom4j-1.5.2.jar -o /root/.m2/repository/dom4j/dom4j/1.5.2/dom4j-1.5.2.jar
curl https://search.maven.org/remotecontent?filepath=jaxen/jaxen/1.1-beta-4/jaxen-1.1-beta-4.jar -o /root/.m2/repository/jaxen/jaxen/1.1-beta-4/jaxen-1.1-beta-4.jar
curl https://search.maven.org/remotecontent?filepath=xerces/xercesImpl/2.2.1/xercesImpl-2.2.1.jar -o /root/.m2/repository/xerces/xercesImpl/2.2.1/xercesImpl-2.2.1.jar

cp /root/.m2/repository/junit/junit/3.8.1/junit-3.8.1.jar /opt/ant/lib/junit-3.8.1.jar