FROM ubuntu:trusty

MAINTAINER Keichi Takahashi <keichi.t@me.com>

RUN apt-get update && \
    apt-get install -y git m4 build-essential gfortran wget && \
    wget -O - http://mirror.jre655.com/GNU/libtool/libtool-2.4.tar.gz | tar xzvf - && \
    wget -O - http://ftp.gnu.org/gnu/automake/automake-1.14.tar.gz | tar xzvf - && \
    wget -O - http://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz | tar xzvf - && \
    cd autoconf* && ./configure && make && make install && cd .. && \
    cd automake* && ./configure && make && make install && cd .. && \
    cd libtool* && ./configure && make && make install && cd .. && \
    rm -rf autoconf* automake* libtool*

