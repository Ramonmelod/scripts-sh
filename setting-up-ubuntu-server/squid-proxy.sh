#!/bin/bash

sudo apt install squid -y
file_name="squid.conf"
dir_path=$(pwd)

file_path=${dir_path}/${file_name}

# makes a copy of the original squid.conf file 
echo -e "making a copy of the original squid.conf file, in case there is any\n"
sudo cp /etc/squid/squid.conf /etc/squid/squid.conf.original 

echo -e "removing the original squid.con file, in case there is any\n"
sudo rm /etc/squid/squid.conf

echo -e "making a copy of the squid.conf file of this repository to the /etc/squid\n"
sudo cp $file_path /etc/squid

echo -e "restarting the squid.service in order to source the new squid.conf file\n"
sudo systemctl restart squid

echo -e "calling the status of the squid service daemon\n"
sudo systemctl status squid
