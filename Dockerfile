FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install \
        wget unzip\
        build-essential cmake git perl python3 bison \
        flex libfl-dev autoconf automake libtool pkg-config \
        m4 zlib1g-dev upx doxygen graphviz

RUN wget https://github.com/avast/retdec/releases/download/v3.3/retdec-v3.3-ubuntu-64b.zip
RUN unzip retdec-v3.3-ubuntu-64b.zip 

