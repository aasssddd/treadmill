# Dockerfile
FROM ubuntu:14.04
COPY . ~/treadmill
WORKDIR ~/treadmill
# RUN ./scripts/install_ubuntu_14.04.sh /treadmill
# ENTRYPOINT /bin/bash
RUN sudo apt-get update
RUN sudo apt-get -y install software-properties-common python-software-properties
RUN sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN sudo add-apt-repository -y ppa:george-edison55/cmake-3.x
RUN sudo apt-get install -y \
  autoconf \
  autoconf-archive \
  automake \
  binutils-dev \
  bison \
  cmake \
  flex \
  g++ \
  gcc \
  git \
  libboost-all-dev \
  libdouble-conversion-dev \
  libevent-dev \
  libgflags-dev \
  libgoogle-glog-dev \
  libiberty-dev \
  libjemalloc-dev \
  libkrb5-dev \
  liblzma-dev \
  libnuma-dev \
  libsnappy-dev \
  libsasl2-dev \
  libssl-dev \
  libtool \
  make \
  python-dev \
  ragel \
  scons \
  zlib1g-dev \
  zip \
  pkg-config \
  gcc-5 \
  g++-5
RUN sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 50
RUN sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 50
