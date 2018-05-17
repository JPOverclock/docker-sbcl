FROM debian:stretch-slim

ARG version=1.4.7

RUN apt-get update && \
    apt-get install -y sbcl build-essential git && \
    git clone https://github.com/sbcl/sbcl.git && \
    cd sbcl && \
    git checkout tags/sbcl-${version} && \
    ./make.sh && \
    apt-get purge -y sbcl && \
    ./install.sh && \
    apt-get purge -y build-essential git && \
    cd .. && \
    rm -rf sbcl*

ENTRYPOINT sbcl
