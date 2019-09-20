FROM bicf/python3:1.0

LABEL Author="Jeremy Mathews" \
Maintainer=BICF@UTSouthwestern.edu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update --fix-missing
RUN apt-get install -y autoconf automake make gcc perl zlib1g-dev libbz2-dev liblzma-dev libcurl4-gnutls-dev libssl-dev libncurses5-dev bedtools unzip

WORKDIR /usr/bin
RUN wget https://github.com/samtools/samtools/releases/download/1.6/samtools-1.6.tar.bz2 && \
    tar -xvjf samtools-1.6.tar.bz2 && \
    rm samtools-1.6.tar.bz2
WORKDIR /usr/bin//samtools-1.6
RUN ./configure
RUN make && make install

WORKDIR /usr/bin
RUN wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip --no-check-certificate && \
    unzip fastqc_v0.11.5.zip && \
    cd FastQC/ && \
    chmod 755 fastqc

WORKDIR /usr/bin
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3a%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjdk8-downloads-2133151.html; oraclelicense=accept-securebackup-cookie;" "https://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jdk-8u191-linux-x64.tar.gz" && \
    tar -xvf jdk-8u191-linux-x64.tar.gz && \
    rm jdk-8u191-linux-x64.tar.gz
WORKDIR /usr/bin//jdk-8u191-linux-x64
RUN ./configure
RUN make && make install

WORKDIR /usr/bin
RUN apt install openjdk-8-jdk
RUN wget https://github.com/broadinstitute/picard/releases/download/2.10.3/picard.jar -O picard.jar

WORKDIR /data
