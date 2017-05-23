#!/usr/bin/env bash
# version=6.1.0

apt-get update

apt-get upgrade -y

apt-get install -y python
apt-get install -y curl python2.7 libpython2.7 python-setuptools python-imaging python-ldap python-urllib3 sqlite3 ffmpeg python-pip
pip install pillow moviepy

rm -rf /var/lib/apt/lists/*

# wget https://bintray.com/artifact/download/seafile-org/seafile/seafile-server_${version}_x86-64.tar.gz
# tar -xzf seafile-server_${version}_x86-64.tar.gz
# rm seafile.tar.gz
