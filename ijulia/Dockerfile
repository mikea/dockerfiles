# Jupyter + IJulia
FROM skippa/anaconda
MAINTAINER mike.aizatsky@gmail.com

RUN echo "deb http://ppa.launchpad.net/staticfloat/julia-deps/ubuntu xenial main" > /etc/apt/sources.list.d/staticfloat-ubuntu-julia-deps-xenial.list
RUN echo "deb http://ppa.launchpad.net/staticfloat/juliareleases/ubuntu xenial main" > /etc/apt/sources.list.d/staticfloat-ubuntu-juliareleases-xenial.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CF979FFA3D3D3ACC
RUN apt-get update && apt-get install julia -y

RUN julia -e "Pkg.init(); Pkg.add(\"IJulia\")"

RUN mkdir /workspace
WORKDIR /workspace

ENV PORT 8888
EXPOSE $PORT

CMD /opt/conda/bin/jupyter notebook --notebook-dir=$WORKDIR --ip='*' --port=$PORT --no-browser
