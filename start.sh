#!/bin/bash

#!/bin/bash

# Give server time to boot, then setup proxy on port 8019
(sleep 10 && curl -sSX POST -d 'port=8019' http://0.0.0.0:8080/proxy) && sleep 2 && curl -H "Content-Type: application/json" -X POST -d '{"username":"admin","password":"admin"}' http://0.0.0.0:8080/proxy/8019/auth/basic/the-internet.herokuapp.com/ &
exec /browsermob-proxy-2.1.0-beta-3/bin/browsermob-proxy -port 8080 --use-littleproxy false
