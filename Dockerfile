FROM ubuntu:18.04

MAINTAINER JianxingChen<buzijianwei@163.com>

# 指定工作目录
WORKDIR /root

RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list &&  apt-get clean && apt-get update  

RUN apt-get install -y --no-install-recommends  \
    apt-transport-https ca-certificates \
    curl \
    wget \
    vim \
    cmake \
    make \
    unzip \
    git \
    python-pip  \
    gfortran \
    gradle \
    scons \
    bison \
    flex \
    libevent-dev \
    libssl-dev \
    subversion \
    pkg-config \
    autoconf \
    automake 

RUN apt-get install -y --no-install-recommends  \
    apt-transport-https ca-certificates \
    gcc \
    g++ \
    libtool \
    curl \
    unzip 
