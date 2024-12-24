#!/bin/bash

sudo apt install squid 
file_name="squid.conf"
dir_path=$(pwd)

file_path=${dir_path}/${file_name}

# makes a copy of the original squid.conf file 
sudo cp /etc/squid/squid.conf /etc/squid/squid.conf.original 
sudo rm /etc/squid/squid.conf
cp $file_path /etc/squid
sudo systemctl restart squid
sudo systemctl status squid

