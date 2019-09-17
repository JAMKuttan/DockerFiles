FROM broadinstitute/gatk:4.1.2.0

LABEL Author="Jeremy Mathews" \
      Maintainer=BICF@UTSouthwestern.edu

RUN wget https://github.com/samtools/samtools/releases/download/1.8/samtools-1.8.tar.bz2 && \
    tar -xvjf samtools-1.8.tar.bz2 && \
    rm samtools-1.8.tar.bz2

WORKDIR /samtools-1.8

RUN ./configure
    make && make install

ENV PATH=/samtools-1.8/bin:$PATH
WORKDIR /data
