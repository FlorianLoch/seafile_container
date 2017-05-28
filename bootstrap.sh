#!/usr/bin/env bash
apt-get update

apt-get upgrade -y

apt-get install -y python
apt-get install -y curl python2.7 libpython2.7 python-setuptools python-imaging python-ldap python-urllib3 sqlite3 ffmpeg python-pip
pip install pillow moviepy

rm -rf /var/lib/apt/lists/*
