#!/bin/bash

sudo apt install squid -y
file_name="squid.conf"
dir_path=$(pwd)

file_path=${dir_path}/${file_name}

# makes a copy of the original squid.conf file 
echo "making a copy of the original squid.conf file, in case there is any"
sudo cp /etc/squid/squid.conf /etc/squid/squid.conf.original 

echo "removing the original squid.con file, in case there is any"
sudo rm /etc/squid/squid.conf

echo "making a copy of the squid.conf file of this repository to the /etc/squid"
sudo cp $file_path /etc/squid

echo "restarting the squid.service in order to source the new squid.conf file "
sudo systemctl restart squid

echo "calling the status of the squid service daemon"
sudo systemctl status squid

