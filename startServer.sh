#!/bin/sh

mkdir -p /data/logs
cd /data/work
pm2 start pm2start.json