#!/bin/bash

echo "start_banner.sh running"

path=$(pwd)

echo "Banner ${path}/ssh_banner.txt" | sudo tee -a /etc/ssh/sshd_config # writes in the file sshd_config 