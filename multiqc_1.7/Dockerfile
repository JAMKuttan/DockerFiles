FROM ubuntu:18.04

LABEL Author="Jeremy Mathews" \
      Maintainer=BICF@UTSouthwestern.edu

WORKDIR /tmp

RUN apt-get update -y && \
    apt-get install -y wget git g++ python-pip && \
    apt-get clean && \
    wget -P / "https://bootstrap.pypa.io/get-pip.py" && \
    python get-pip.py && \
    rm -rf get-pip.py

RUN pip install git+git://github.com/ewels/MultiQC.git
