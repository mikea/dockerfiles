FROM skippa/base
MAINTAINER mike.aizatsky@gmail.com

ENV ANACONDA_VERSION "4.2.0"
ENV CONDA_PATH "/opt/conda"
ENV PATH "$CONDA_PATH/bin:$PATH"

RUN apt-get update && apt-get upgrade -y && apt-get install -y wget bzip2

RUN wget --quiet https://repo.continuum.io/archive/Anaconda2-$ANACONDA_VERSION-Linux-x86_64.sh -O anaconda.sh && \
    /bin/bash anaconda.sh -b -p $CONDA_PATH && \
    rm anaconda.sh

RUN conda update anaconda -y

ENV JUPYTER "/opt/conda/bin/jupyter"
ENV PORT 8888
EXPOSE $PORT

CMD [ "$JUPYTER", "notebook", "--no-browser", "--port", $PORT ]
