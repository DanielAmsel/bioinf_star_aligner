FROM ubuntu:20.04
RUN apt-get update && apt-get install -y wget build-essential libhts-dev
RUN wget https://github.com/alexdobin/STAR/archive/2.7.9a.tar.gz
WORKDIR STAR/source
RUN make STAR
