#!/bin/bash

zone=$(curl "http://ip-api.com/json" | grep -Poi '(?<="timezone":").+(?=","isp")')
echo "My TimeZone Is: $zone"
sudo timedatectl set-timezone $zone
timedatectl
