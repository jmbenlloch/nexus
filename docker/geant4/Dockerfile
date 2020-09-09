FROM ubuntu:bionic

ENV G4_VERSION 10.05

RUN apt-get update -y && \
    apt-get install -y cmake curl g++ libexpat1-dev
RUN mkdir -p /opt/geant4/src && \
    mkdir -p /opt/geant4/build && \
    mkdir -p /opt/geant4/install && \
    mkdir -p /opt/geant4/data && \
    curl -o /geant4.tar.gz http://geant4-data.web.cern.ch/geant4-data/releases/source/geant4.${G4_VERSION}.tar.gz && \
    tar xf /geant4.tar.gz -C /opt/geant4/src && \
    cd /opt/geant4/build && \
    cmake -DCMAKE_INSTALL_PREFIX=/opt/geant4/install \
          -DGEANT4_BUILD_MULTITHREADED=ON \
          -DGEANT4_INSTALL_EXAMPLES=OFF \
          ../src/geant4.${G4_VERSION} && \
    make -j`nproc` && \
    make install && \
    rm -r /opt/geant4/src /opt/geant4/build

COPY /download_dataset.sh /download_dataset.sh
RUN bash /download_dataset.sh /opt/geant4/data
