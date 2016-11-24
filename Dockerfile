FROM ubuntu:14.04

MAINTAINER liyang sudo.liyang@gmail.com

RUN apt-get update \
    && apt-get install -y wget

RUN mkdir /opt/jdk \
    && cd /opt \
    && wget --header "Cookie: oraclelicense=accept-securebackup-cookie"  http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz  \
    && tar -zxf jdk-7u79-linux-x64.tar.gz -C /opt/jdk \
    && rm jdk-7u79-linux-x64.tar.gz
RUN update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.7.0_79/bin/java 100 \
    && update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.7.0_79/bin/javac 100

