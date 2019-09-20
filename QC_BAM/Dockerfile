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
RUN wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/11.0.1+13/90cf5d8f270a4347a95050320eef3fb7/jdk-11.0.1_linux-x64_bin.tar.gz && \
    tar -xvf jdk-11.0.1_linux-x64_bin.tar.gz && \
    rm jdk-11.0.1_linux-x64_bin.tar.gz
WORKDIR /usr/bin//jdk-11.0.1_linux-x64_bin
RUN ./configure
RUN make && make install

WORKDIR /usr/bin
RUN apt install openjdk-8-jdk
RUN wget https://github.com/broadinstitute/picard/releases/download/2.10.3/picard.jar -O picard.jar

WORKDIR /data
