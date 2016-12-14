# Jupyter + IJulia
FROM skippa/anaconda
MAINTAINER mike.aizatsky@gmail.com

# Install Julia. See ../julia/Dockerfile
RUN apt-get install software-properties-common -y && apt-get autoremove -y
RUN add-apt-repository ppa:staticfloat/juliareleases
RUN add-apt-repository ppa:staticfloat/julia-deps
RUN apt-get update && apt-get install julia -y

# RUN julia -e "Pkg.init()"

CMD "julia"