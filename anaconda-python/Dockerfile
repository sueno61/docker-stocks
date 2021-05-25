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
RUN wget https://repo.continuum.io/archive/Anaconda3-2020.11-Linux-x86_64.sh && \
sh /opt/Anaconda3-2020.11-Linux-x86_64.sh -b -p /opt/anaconda3 && \
rm -f Anaconda3-2020.11-Linux-x86_64.sh
## set path
ENV PATH /opt/anaconda3/bin:$PATH

RUN mkdir /work
WORKDIR /work

## update pip and install
RUN pip install --upgrade pip setuptools && \
pip install japanize-matplotlib pandas-profiling tensorflow keras torch torchvision

## execute jupyterlab as a default command
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]