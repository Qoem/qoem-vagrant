#!/bin/bash

sudo ln -s /home/vagrant/.Xauthority /root/.Xauthority
cd /home/vagrant/qoem/ && git pull > /dev/null 2>&1
export XAUTHORITY=/home/vagrant/.Xauthority
#sudo /etc/init.d/mongodb stop > /dev/null 2>&1
sudo mkdir -p /data/db

