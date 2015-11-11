#!/bin/bash

# Give server time to boot, then setup proxy on port 8019
#(sleep 10 && curl -sSX POST -d "port=8019&bindAddress=$(cat /etc/hosts | grep $(hostname) | cut -f1)" http://0.0.0.0:8080/proxy) &

exec /browsermob-proxy-2.1.0-beta-3/bin/browsermob-proxy -port 8080 --use-littleproxy false
