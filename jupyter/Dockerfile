 FROM jupyter/scipy-notebook
 
 RUN conda update --all --yes
 RUN conda install --yes 'pymc3>=3.11' mkl-service
 RUN conda install --yes python-graphviz
 RUN pip install yfinance ib_insync watermark
 
 RUN conda info
 RUN conda list
 
