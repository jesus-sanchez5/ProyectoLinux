#!/bin/bash



for i in $(seq 2 254); do
 	timeout 1  bash  -c  "ping -c 1 192.168.1.$i > /dev/bnull 2>&1" && echo "Host 192.168.1.$i - ACTIVO" &
done; wait
