# kaggleのpython環境をベースにする
# CPU-only  :v93
FROM gcr.io/kaggle-images/python:v93

RUN apt-get update && apt-get install -y \
	sudo \
	wget \
	vim \
	fonts-ipaexfont \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

# ライブラリの追加インストール
RUN pip install --upgrade pip setuptools && \
    pip install fastprogress japanize-matplotlib notebook jupyterlab google

RUN rm -rf /root/.cache/*

RUN mkdir /work
WORKDIR /work
## execute jupyterlab as a default command
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]