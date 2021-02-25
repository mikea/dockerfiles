FROM jupyter/scipy-notebook
 
RUN conda update --all --yes \
 && conda install --yes 'pymc3>=3.11' mkl-service python-graphviz numpy \
 && conda install --yes -c pytorch pytorch torchvision torchaudio cpuonly \
 && conda install --yes -c anaconda tensorflow
RUN pip install --upgrade yfinance ib_insync watermark
RUN jupyter labextension install \
   @jupyterlab/katex-extension \
   @jupyterlab/celltags
#   @jupyterlab/git
#RUN conda install -c conda-forge "elyra>=2.0.1" && jupyter lab build
 
RUN pip list \
 && conda info \
 && conda list \
 && jupyter labextension list
