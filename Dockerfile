FROM ubuntu:20.04
RUN apt-get update && apt-get install -y wget build-essential libhts-dev
WORKDIR /opt/
RUN wget https://github.com/alexdobin/STAR/archive/2.7.9a.tar.gz
WORKDIR /opt/STAR/source
RUN make STAR
ENV PATH="/opt/STAR/source/:${PATH}"
