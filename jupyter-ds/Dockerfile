FROM jupyter/datascience-notebook

USER root
ENV DEBCONF_NOWARNINGS yes

RUN apt-get update && apt-get install -y libpq-dev \
    fonts-ipaexfont \
    mecab mecab-ipadic-utf8 libmecab-dev swig \
libv8-dev less \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

# Change environment to Japanese(Character and DateTime)
ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
RUN sed -i '$d' /etc/locale.gen \
  && echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen \
	&& locale-gen ja_JP.UTF-8 \
	&& /usr/sbin/update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
RUN /bin/bash -c "source /etc/default/locale"
RUN ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

USER jovyan

COPY packages.r ${PWD}
RUN Rscript ./packages.r

COPY requirements.txt ${PWD}
RUN pip install -r requirements.txt

RUN conda clean --all -y && rm -rf /home/jovyan/.cache/*

WORKDIR /home/jovyan/work
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]