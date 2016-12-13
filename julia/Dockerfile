# Julia language
FROM ubuntu:latest

MAINTAINER mike.aizatsky@gmail.com

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y && apt-get autoremove -y
RUN apt-get install -y vim gcc g++ git make build-essential libssl-dev gfortran bar time curl m4 cmake python

ENV JULIA_BRANCH "release-0.5"

RUN git clone --depth 1 -b $JULIA_BRANCH https://github.com/JuliaLang/julia.git /root/julia
WORKDIR /root/julia
RUN make -j$(nproc)
RUN prefix=/usr make -j$(nproc) install
RUN rm -rf /root/julia
WORKDIR /root

CMD "julia"