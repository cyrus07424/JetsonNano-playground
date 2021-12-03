#!/bin/bash

# stop script on error
set -e

# Change directory
cd ccminer

# Start mining
./ccminer -a neoscrypt -o stratum+tcp://neoscrypt.usa-west.nicehash.com:3341 -u <username>