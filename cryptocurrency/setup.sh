#!/bin/bash

# stop script on error
set -e

# Install dependencies
sudo apt-get install -y libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential

# Check to see if ccminer exists, download if not
if [ ! -d ./ccminer ]; then
  printf "\nCloning the ccminer...\n"
  git clone -b linux https://github.com/tpruvot/ccminer
fi

# Change directory
cd ccminer

# TODO Makefile.amの134~135行目を以下のように変更
# nvcc_ARCH += -gencode=arch=compute_53,code=\"sm_53,compute_53\"
# #nvcc_ARCH += -gencode=arch=compute_52,code=\"sm_52,compute_52\"

# Build ccminer
./build.sh

# Check ccminer version
./ccminer --version