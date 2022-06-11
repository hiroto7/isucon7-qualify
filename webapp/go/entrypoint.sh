#!/bin/bash

/etc/init.d/redis-server start
/home/isucon/isubata/webapp/go/isubata
curl web/initialize_redis
