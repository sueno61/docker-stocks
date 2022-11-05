# Dockerfile

## セキュリティを考慮して、一般ユーザを追加
### sudo に加えることで pip install も可能　※若干の注意点あり

```Dockerfile
FROM python:3.8

RUN apt-get update \
&& apt-get install -y sudo wget vim fonts-ipaexfont

RUN apt-get clean && apt clean && rm -rf /var/lib/apt/lists/*


# 一般ユーザ追加
ENV USER taku
RUN adduser --disabled-password --gecos "" ${USER} 
RUN gpasswd -a ${USER} sudo
RUN echo "${USER}:${USER}" | chpasswd
WORKDIR /tmp

RUN mkdir /work
WORKDIR /work

RUN pip install numpy pandas

# ユーザ変更
USER ${USER}

# COPY ./requirements.txt ${PWD}
# RUN pip install -r requirements.txt

RUN pip install flask  # ← /home/taku/.lib/python3.8/site-packages にインストールされる

CMD ["bash"]
```

### パッケージはユーザディレクトリ配下にインストールされるが、import 可能！

---
### <注意>
ビルド後、一般ユーザでpipインストールすると、ユーザのホームディレクトリ配下にインストール   
される（これはDockerfile内でのインストールと同じ）が、importできない！  
※ sudo pip install とすれば、/usr/local/lib/python* 配下にインストールされ、（当然？）import 可能