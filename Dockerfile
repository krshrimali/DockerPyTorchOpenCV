FROM ubuntu:18.04
LABEL maintainer="HimanshuSinghGH <heman.sam@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive 

ENV DEPS gcc \
         cmake \
         g++ \
         git \
         python3-dev \
         python3-pip \
         python3-numpy \
         python3-opencv 
        # libavcodec-dev \
        # libavformat-dev \
        # libswscale-dev \
        # libgstreamer-plugins-base1.0-dev \
        # libgstreamer1.0-dev \
        # libgtk-3-dev \
        # libpng-dev \
        # libjpeg-dev \
        # libopenexr-dev \
        # libtiff-dev \
        # libwebp-dev
         
RUN apt-get update && \
    apt-get install -y --no-install-recommends $DEPS && \
    pip3 install torch==1.4.0+cpu torchvision==0.5.0+cpu -f https://download.pytorch.org/whl/torch_stable.html
