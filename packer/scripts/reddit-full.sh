#!/bin/bash
set -e
git clone -b monolith https://github.com/alarex/reddit.git /opt/reddit
cd /opt/reddit && bundle install
cp /opt/reddit/reddit.service /lib/systemd/system/
systemctl daemon-reload
systemctl start reddit.service
systemctl enable reddit.service
# set -e
# apt-get install -y gnupg 
# wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -
# echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list
# apt update
# apt install -y mongodb-org
# systemctl start mongod
# systemctl enable mongod
# apt update
# apt install -y ruby2.2 ruby-bundler build-essential
