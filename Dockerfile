FROM ubuntu:18.04
LABEL maintainer="HimanshuSinghGH <heman.sam@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive 

ENV cwd="/root"

ENV DEPS gcc \
         cmake \
         g++ \
         git \
         python3-dev \
         python3-pip \
         python3-numpy \
        # python3-opencv \
        libavcodec-dev \
        libavformat-dev \
        libswscale-dev \
        libgstreamer-plugins-base1.0-dev \
        libgstreamer1.0-dev \
        libgtk-3-dev \
        libpng-dev \
        libjpeg-dev \
        libopenexr-dev \
        libtiff-dev \
        libwebp-dev \
	qt5-default
         
RUN apt-get update && \
    apt-get install -y --no-install-recommends $DEPS && \
    pip3 install torch==1.4.0+cpu torchvision==0.5.0+cpu -f https://download.pytorch.org/whl/torch_stable.html

WORKDIR $cwd

RUN git clone https://github.com/opencv/opencv.git && \
    git clone https://github.com/opencv/opencv_contrib.git && \
    cd opencv && \
    git checkout 4.2.0 && \
    cd ../opencv_contrib && \
    git checkout 4.2.0 && \
    cd ../opencv && \
    mkdir -p build && \
    cd build && \
    cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_C_EXAMPLES=ON -DINSTALL_PYTHON_EXAMPLES=ON \
	-DWITH_TBB=ON -DWITH_V4L=ON -DWITH_QT=ON -DWITH_OPENGL=ON -DOPENCV_EXTRA_MODULES=../../opencv_contrib/modules \
	-DBUILD_EXAMPLES=ON .. && \
    make && \
    make install
