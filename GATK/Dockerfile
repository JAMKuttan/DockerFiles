FROM broadinstitute/gatk:4.1.2.0

LABEL Author="Jeremy Mathews" \
      Maintainer=BICF@UTSouthwestern.edu

WORKDIR /tmp

RUN wget https://github.com/samtools/samtools/releases/download/1.9/samtools-1.9.tar.bz2 && \
    tar -xvjf samtools-1.9.tar.bz2 && \
    rm samtools-1.9.tar.bz2

WORKDIR /samtools-1.9

RUN ./configure
    make && make install

ENV PATH=/samtools-1.9/bin:$PATH
WORKDIR /data

