# Coq theorem prover
FROM ubuntu:latest

MAINTAINER mike.aizatsky@gmail.com

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget ocaml ocaml-native-compilers camlp5 liblablgtk2-ocaml-dev liblablgtksourceview2-ocaml-dev libgtk2.0-dev

ENV VERSION "8.5pl3"

RUN cd /tmp \
  && wget https://coq.inria.fr/distrib/V$VERSION/files/coq-$VERSION.tar.gz \
  && tar zxvf coq-$VERSION.tar.gz \
  && rm -rf coq-$VERSION.tar.gz \
  && cd coq-$VERSION \
  && ./configure -prefix /usr/local \
  && make \
  && make install \
  && cd .. \
  && rm -rf coq-$VERSION
