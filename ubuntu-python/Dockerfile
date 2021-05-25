FROM sueno61/ubuntu20.04-for-python

WORKDIR /tmp
RUN wget https://www.python.org/ftp/python/3.9.5/Python-3.9.5.tar.xz \
&& tar xJf Python-3.9.5.tar.xz \
&& rm -f Python-3.9.5.tar.xz

WORKDIR /tmp/Python-3.9.5
RUN ./configure && make && make install

WORKDIR /usr/local/bin
RUN ln -s python3 python && ln -s pip3 pip

RUN mkdir /work
WORKDIR /work

# install library
RUN pip install --upgrade pip setuptools
COPY requirements.txt ${PWD}
RUN pip install -r requirements.txt  && rm -rf /root/.cache/*

# execute jupyterlab as a default command
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]
