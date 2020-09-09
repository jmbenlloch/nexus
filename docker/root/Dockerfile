FROM ubuntu:bionic

# if x11 add: libx11-dev libxpm4 libxpm-dev libxft2 libxft-dev libxext6 libxext-dev
RUN apt-get update -y && \
    apt-get install -y cmake curl g++ libexpat1-dev git python3 zlib1g zlib1g-dev libssl-dev && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/archives/* && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/root/src && \
    mkdir -p /opt/root/build && \
    mkdir -p /opt/root/install && \
    curl -o /root.tar.gz https://root.cern/download/root_v6.22.02.source.tar.gz && \
    tar xf /root.tar.gz -C /opt/root/src && \
    cd /opt/root/build && \
    cmake -DCMAKE_INSTALL_PREFIX=/opt/root/install -Dx11=OFF ../src/root-6.22.02 && \
    make -j`nproc` && \
    make install && \
    rm -r /opt/root/src /opt/root/build /root.tar.gz
