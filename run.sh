#!/usr/bin/env bash
ulimit -n 30000

cd /seafile/seafile-server-latest

./seafile.sh start
./seahub.sh start

tail -F -n0 /etc/hosts # Just to keep the container runnning...