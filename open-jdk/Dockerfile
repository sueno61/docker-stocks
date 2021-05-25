FROM openjdk:15.0-slim

RUN apt-get update && apt-get install -y \
	sudo \
	wget \
	vim \
	fonts-ipaexfont \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

WORKDIR /home/projects