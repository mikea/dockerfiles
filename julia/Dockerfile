# Julia language
FROM ubuntu:latest

MAINTAINER mike.aizatsky@gmail.com

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y && apt-get install software-properties-common -y && apt-get autoremove -y
RUN add-apt-repository ppa:staticfloat/juliareleases
RUN add-apt-repository ppa:staticfloat/julia-deps
RUN apt-get update && apt-get install julia -y

CMD "julia"