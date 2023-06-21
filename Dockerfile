FROM ubuntu:bionic

RUN apt update && apt upgrade -y && \
    apt install python3-pip -y

RUN pip3 install --upgrade pip setuptools wheel && \
    pip3 install tensorflow==1.12.0 && \
    pip3 install scipy==1.0.0 && \
    pip3 install matplotlib==3.0.2 && \
    pip3 install librosa==0.6.2
