#!/bin/bash

# stop script on error
set -e

# Change directory
cd ccminer

# Start mining
./ccminer -a equihash -o stratum+tcp://equihash.usa-west.nicehash.com:3357 -u <username>