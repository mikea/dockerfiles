#!/bin/bash -eux

docker build --pull -t skippa/base base

docker build --pull -t skippa/coq coq
docker build --pull -t skippa/coqide coqide

docker build --pull -t skippa/anaconda anaconda
docker build --pull -t skippa/julia julia
docker build --pull -t skippa/ijulia ijulia