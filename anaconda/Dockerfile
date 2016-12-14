FROM skippa/base
MAINTAINER mike.aizatsky@gmail.com

ENV ANACONDA_VERSION "4.2.0"
ENV CONDA_PATH "/opt/conda"
ENV PATH "$CONDA_PATH/bin:$PATH"

RUN apt-get install -y wget bzip2

RUN wget --quiet https://repo.continuum.io/archive/Anaconda2-$ANACONDA_VERSION-Linux-x86_64.sh -O anaconda.sh && \
    /bin/bash anaconda.sh -b -p $CONDA_PATH && \
    rm anaconda.sh

# RUN apt-get install -y curl grep sed dpkg && \
#     TINI_VERSION=`curl https://github.com/krallin/tini/releases/latest | grep -o "/v.*\"" | sed 's:^..\(.*\).$:\1:'` && \
#     curl -L "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini_${TINI_VERSION}.deb" > tini.deb && \
#     dpkg -i tini.deb && \
#     rm tini.deb && \
#     apt-get clean

# ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/bash" ]