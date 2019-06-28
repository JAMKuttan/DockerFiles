FROM ubuntu:18.04

LABEL Author="Jeremy Mathews" \
      Maintainer=BICF@UTSouthwestern.edu

WORKDIR /tmp

RUN apt-get update -y && \
    apt-get install -y wget unzip && \
    apt-get clean && \
    wget -P / "http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip" && \
    unzip fastqc_v0.11.5.zip && \
    cp -r FastQC /usr/bin && \
    rm -rf fastqc_v0.11.5.zip && \
    rm -rf FastQC
