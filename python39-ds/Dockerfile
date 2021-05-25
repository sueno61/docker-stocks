FROM python:3.9

# update
RUN apt-get update && apt-get install -y \
	sudo wget vim \
	fonts-ipaexfont \
	mecab mecab-ipadic-utf8 libmecab-dev swig \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN mkdir /work
WORKDIR /work

# install library
RUN pip install --upgrade pip setuptools
COPY requirements.txt ${PWD}
RUN pip install -r requirements.txt  && rm -rf /root/.cache/*

# execute jupyterlab as a default command
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]