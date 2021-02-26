FROM jupyter/scipy-notebook
 
RUN conda update --all --yes \
 && conda install --yes 'pymc3>=3.11' mkl-service python-graphviz \
 && pip install --upgrade "torch>=1.7" torchvision torchaudio pytorch-lightning \
    yfinance ib_insync watermark tensorflow "numpy>=1.20" \
 && jupyter labextension install @jupyterlab/katex-extension @jupyterlab/celltags
 
#   @jupyterlab/git
#RUN conda install -c conda-forge "elyra>=2.0.1" && jupyter lab build
 
RUN pip list \
 && conda info \
 && conda list \
 && jupyter labextension list
