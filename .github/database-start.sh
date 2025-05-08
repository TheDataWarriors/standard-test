#!/bin/bash

echo "Managing Oracle Autonomous Database..."
export INFO=$(curl -s -k -L -X GET "https://api.testpilot-controller.oraclecloud.com/ords/testpilot/admin/database?type=autonomous" -H 'accept: application/json')
export HOST=$(echo $INFO | jq -r '.database' | jq -r '.host')
export SERVICE=$(echo $INFO | jq -r '.database' | jq -r '.service')
export PASSWORD=$(echo $INFO | jq -r '.database' | jq -r '.password')

curl -v -s -X GET "https://z3gk1l7d.adb.us-ashburn-1.oraclecloud.com/ords/testpilot/admin/database?p_type=autonomous" -H "accept: application/json"
