# 基础镜像使用ubuntu18.04
FROM ubuntu:18.04

MAINTAINER JianxingChen<buzijianwei@163.com>

RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN  apt-get clean
RUN apt-get update

# 指定工作目录
WORKDIR /root

# 对外使用端口8000
EXPOSE 8000



