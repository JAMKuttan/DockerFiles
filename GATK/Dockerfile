FROM broadinstitute/gatk:4.1.2.0

LABEL Author="Jeremy Mathews" \
      Maintainer=BICF@UTSouthwestern.edu

RUN sudo apt-get update
    sudo apt-get install gcc
    sudo apt-get install make
    sudo apt-get install libbz2-dev
    sudo apt-get install zlib1g-dev
    sudo apt-get install libncurses5-dev 
    sudo apt-get install libncursesw5-dev
    sudo apt-get install liblzma-dev

RUN wget https://github.com/samtools/samtools/releases/download/1.8/samtools-1.8.tar.bz2 && \
    tar -xvjf samtools-1.8.tar.bz2 && \
    rm samtools-1.8.tar.bz2

WORKDIR /samtools-1.8

RUN ./configure
    make && make install


WORKDIR /data
