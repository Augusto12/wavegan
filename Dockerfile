FROM ubuntu:bionic

# Install OS packages
RUN apt update && apt upgrade -y && \
    apt install python3.7 python3-pip -y

# Install python packages
RUN python3.7 -m pip install --upgrade pip setuptools wheel && \
    python3.7 -m pip install MarkupSafe && \
    python3.7 -m pip install tensorflow==1.13.1 && \
    python3.7 -m pip install protobuf==3.20.1 && \
    python3.7 -m pip install scipy && \
    python3.7 -m pip install matplotlib==3.0.2 && \
    python3.7 -m pip install librosa==0.6.2

    
