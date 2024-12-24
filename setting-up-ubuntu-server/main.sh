#!/bin/bash

sudo apt update && sudo apt upgrade -y

echo -e " Running the util.sh script in order to install usefull packages like:\n asdf \n chromium \n chromium driver and others\n "
./utils.sh 
./docker-install.sh 
./start_banner.sh
./squid-proxy