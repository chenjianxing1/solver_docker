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
    automake \
    libboost-dev \
    gdb \ 
    rsync \
    tar \
    python \
    ssh

RUN apt-get install -y --no-install-recommends  \
    apt-transport-https ca-certificates \
    gcc \
    g++ \
    libtool \
    curl \
    unzip

    
RUN  apt-get install -y openssh-server gdbserver

# Install ThirdParty
COPY ./3rd_party/ /opt/3rd_party/

RUN cd /opt/3rd_party && \
    bash init.sh && \
    rm -fr /opt/3rd_party/

RUN mkdir /var/run/sshd
RUN echo 'root:123' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
