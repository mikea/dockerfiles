#!/bin/bash -eux

docker build --pull -t skippa/base base

docker build -t skippa/coq coq
docker build -t skippa/coqide coqide

docker build -t skippa/anaconda anaconda
docker build -t skippa/julia julia
docker build -t skippa/ijulia ijulia