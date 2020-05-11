#!/bin/bash

# stop script on error
set -e

# Change directory
cd ccminer

# Start mining
./ccminer -a lyra2rev2 -o stratum+tcp://stratum1.vippool.net:8888 -u evosystem.evo -p pass