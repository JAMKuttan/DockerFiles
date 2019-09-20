FROM bicf/python3:1.0

LABEL Author="Jeremy Mathews" \
Maintainer=BICF@UTSouthwestern.edu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update --fix-missing
RUN apt-get install -y autoconf automake make gcc perl zlib1g-dev libbz2-dev liblzma-dev libcurl4-gnutls-dev libssl-dev libncurses5-dev bedtools unzip default-jdk git

WORKDIR /usr/bin
RUN wget https://github.com/samtools/samtools/releases/download/1.6/samtools-1.6.tar.bz2 && \
    tar -xvjf samtools-1.6.tar.bz2 && \
    rm samtools-1.6.tar.bz2

WORKDIR /usr/bin//samtools-1.6
RUN ./configure
RUN make && make install

WORKDIR /usr/bin
RUN conda install -c bioconda fastqc=0.11.5

RUN git clone https://github.com/broadinstitute/picard.git
RUN cd picard/
RUN ./gradlew shadowJar

WORKDIR /data
