#!/bin/bash

# stop script on error
set -e

# Install dependencies
sudo apt-get update
sudo git apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y

# Check to see if ccminer exists, download if not
if [ ! -d ./ccminer ]; then
  printf "\nCloning the ccminer...\n"
  git clone -b linux https://github.com/tpruvot/ccminer/
fi

# Change directory
cd ccminer

# Makefile.amの124行目を変更
sed -i -e "s/nvcc_ARCH += -gencode=arch=compute_52,code=\"sm_52,compute_52\"/nvcc_ARCH += -gencode=arch=compute_53,code=\"sm_53,compute_53\/g" Makefile.am

# Build ccminer
./build.sh

# Check ccminer version
./ccminer --version