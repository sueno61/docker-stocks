FROM ubuntu:20.04

RUN apt-get -y update && apt-get install -y \
    sudo \
    wget \
    vim \
    fonts-ipaexfont \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

## install anaconda3
WORKDIR /opt
## download anaconda package and install anaconda
## archive -> https://repo.continuum.io/archive/
RUN wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
sh /opt/Miniconda3-latest-Linux-x86_64.sh -b -p /opt/miniconda3 && \
rm -f Miniconda3-latest-Linux-x86_64.sh
## set path
ENV PATH /opt/miniconda3/bin:$PATH

RUN mkdir /work
WORKDIR /work

## update pip and install
RUN conda update conda && \
conda install numpy pandas scikit-learn matplotlib seaborn jupyterlab

RUN pip install japanize-matplotlib

## execute jupyterlab as a default command
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]