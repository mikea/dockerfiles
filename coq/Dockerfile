# Coq theorem prover
FROM ubuntu:16.04

MAINTAINER mike.aizatsky@gmail.com

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget ocaml ocaml-native-compilers camlp5 liblablgtk2-ocaml-dev liblablgtksourceview2-ocaml-dev libgtk2.0-dev

RUN cd /tmp \
  && wget https://coq.inria.fr/distrib/V8.5pl1/files/coq-8.5pl1.tar.gz \
  && tar zxvf coq-8.5pl1.tar.gz \
  && rm -rf coq-8.5pl1.tar.gz \
  && cd coq-8.5pl1 \
  && ./configure -prefix /usr/local \
  && make \
  && make install


RUN mkdir /workspace
VOLUME /workspace
WORKDIR /workspace
ENTRYPOINT "coqide"
