 FROM jupyter/scipy-notebook
 
 RUN conda update --all --yes
 RUN conda install --all --yes 'pymc3>=3.11' mkl-service
 RUN conda install --all --yes python-graphviz jupyterlab-git
 RUN conda install --all --yes pytorch torchvision torchaudio cpuonly -c pytorch
 RUN pip install --upgrade yfinance ib_insync watermark
 RUN jupyter labextension install \
    @jupyterlab/katex-extension \
    @jupyterlab/celltags \
    @jupyterlab/git
 #RUN conda install -c conda-forge "elyra>=2.0.1" && jupyter lab build
 
 RUN pip list
 RUN conda info
 RUN conda list
 RUN jupyter labextension list
