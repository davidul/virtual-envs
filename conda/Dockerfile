FROM debian:bookworm

ENV PATH /opt/conda/bin:$PATH

RUN apt-get update --fix-missing --yes  \
    && apt-get install --yes ca-certificates libpsl5 libssl3 openssl publicsuffix wget  \
    && apt-get clean

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh -O ~/conda.sh

RUN bin/bash ~/conda.sh -b -p /opt/conda

RUN ["/bin/bash", "-c", "source /opt/conda/bin/activate"]

RUN conda update conda && conda init bash && conda install -c conda-forge jupyterlab

CMD ["/bin/bash"]