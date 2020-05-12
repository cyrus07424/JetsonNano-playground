#!/bin/bash

# stop script on error
set -e

# run pub/sub sample app using certificates downloaded in package
printf "\nRunning pub/sub sample application...\n"
python3 temperaturePubSub.py -e a1zee5hib7fy9v-ats.iot.ap-northeast-1.amazonaws.com -r root-CA.crt -c jetson_nano.cert.pem -k jetson_nano.private.key -t jetson_nano/log -acid 21079 -awk 1d4e6adca6f54050