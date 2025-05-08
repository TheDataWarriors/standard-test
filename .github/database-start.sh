#!/bin/bash

echo "Managing Oracle Autonomous Database..."
export INFO=$(curl -s -k -L -X GET "https://api.testpilot-controller.oraclecloud.com/ords/testpilot/admin/database?type=autonomous" -H 'accept: application/json')
export HOST=$(echo $INFO | jq -r '.database' | jq -r '.host')
export SERVICE=$(echo $INFO | jq -r '.database' | jq -r '.service')
export PASSWORD=$(echo $INFO | jq -r '.database' | jq -r '.password')

curl -v -k GET https://api.testpilot-controller.oraclecloud.com/ords/testpilot/admin/download_logs/41873055428 > /tmp/B.txt
# ls -la /home/ubuntu/actions-runner/_work/standard-test/standard-test
less /home/ubuntu/actions-runner/_work/standard-test/standard-test/B.txt
# echo "HI" > /tmp/dd.txt

