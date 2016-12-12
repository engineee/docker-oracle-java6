FROM ubuntu:14.04
MAINTAINER MarvAmBass

RUN apt-get update; apt-get install -y \
    software-properties-common \
    python-software-properties

RUN echo oracle-java6-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections

RUN add-apt-repository -y ppa:webupd8team/java && \
    apt-get update; \
    apt-get install -y oracle-java6-installer; \
    apt-get install -y oracle-java6-set-default; \
    rm -rf /var/cache/oracle-jdk6-installer; \
    apt-get install -y firefox
    
