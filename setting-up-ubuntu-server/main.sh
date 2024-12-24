#!/bin/bash

sudo apt update && sudo apt upgrade -y

echo -e " Running the util.sh script in order to install usefull packages like:\n asdf \n chromium \n chromium driver and others\n "
./utils.sh 

echo -e " Running the docker-install.sh script in order to install docker\n"
./docker-install.sh 

echo -e " Running the start_banner.sh script in order to set the start banner server\n\n #####\n\n\n Do not forget to change this project banner for your own banner!\n\n\n ####\n\n\n "
./start_banner.sh

echo -e " Running the squid-proxy script in order to install squid and make available your personal proxy server\n "
./squid-proxy