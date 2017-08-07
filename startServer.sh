#!/bin/sh

mkdir -p /data/logs
sh npm-install.sh
pm2 start pm2start.json