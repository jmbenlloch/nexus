#!/bin/bash

source /nexus/docker/env.sh

#Compile nexus
# Policy CMP0074 is not known by cmake in docker image -> removed
sed -i "s/`grep CMP0074 CMakeLists.txt`/#invalid policy removed/g" CMakeLists.txt
cmake -DCMAKE_INSTALL_PREFIX=$NEXUSDIR $NEXUSDIR
cmake --build .  --target install -- -j`nproc`

