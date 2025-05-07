#!/bin/bash

echo "Managing Oracle Autonomous Database..."
export INFO=$(curl -s -k -L -X GET "https://api.testpilot-controller.oraclecloud.com/ords/testpilot/admin/database?type=autonomous" -H 'accept: application/json')
export HOST=$(echo $INFO | jq -r '.database' | jq -r '.host')
export SERVICE=$(echo $INFO | jq -r '.database' | jq -r '.service')
export PASSWORD=$(echo $INFO | jq -r '.database' | jq -r '.password')

curl -v -s -X POST "https://${HOST}.oraclecloudapps.com/ords/admin/_/database?p_type=autonomous" -H 'accept: application/json'
