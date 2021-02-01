 FROM jupyter/scipy-notebook
 
 RUN conda update --all --yes
 RUN conda install --yes 'pymc3>=3.11' mkl-service
 RUN conda install --yes python-graphviz jupyterlab-git
 RUN pip install yfinance ib_insync watermark
 RUN jupyter labextension install @jupyterlab/katex-extension @jupterlab/celltags @jupyterlab/git @jupterlab/google-drive
 
 RUN conda info
 RUN conda list
 RUN jupyter labextension list
