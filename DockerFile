FROM ubuntu:18.04

LABEL Author="Jeremy Mathews" \
        Maintainer=BICF@UTSouthwestern.edu

WORKDIR /tmp

RUN apt-get update -y && \
    apt-get install -y wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    wget -P / "http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.8.2-1/sratoolkit.2.8.2-1-ubuntu64.tar.gz" && \
    tar zxf /sratoolkit.2.8.2-1-ubuntu64.tar.gz && \
    cp -r /sratoolkit.2.8.2-1-ubuntu64/bin/* /usr/bin && \
    rm -fr /sratoolkit.2.8.2-1-ubuntu64*
