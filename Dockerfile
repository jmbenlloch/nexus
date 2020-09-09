FROM ubuntu:bionic

ENV TZ=Europe/Berlin
RUN apt-get update -y && \
    apt-get install -y cmake g++ libexpat1-dev git && \
    apt-get install -y libgsl23 libgsl-dev libhdf5-dev libhdf5-100 pkg-config && \
    DEBIAN_FRONTEND="noninteractive" apt-get install -y python3-pytest python3-numpy python3-pandas && \
	DEBIAN_FRONTEND="noninteractive" apt-get install -y locales && \
	apt-get install curl &&\ 
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/archives/* && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir -p /opt/geant4/data
# locales
#locale-gen "en_US.UTF-8"

COPY --from=jmbenlloch/geant4-nexus /opt/geant4 /opt/geant4
COPY --from=jmbenlloch/root-nexus /opt/root/install /opt/root/install

# Set the locale
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

COPY . /nexus
WORKDIR /nexus

RUN bash /nexus/docker/compile_docker.sh

