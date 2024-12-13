#!/bin/bash

echo "start_banner.sh running"

path=$(pwd)

sudo echo "Banner ${path}/ssh_banner.txt"  >> /etc/ssh/sshd_config


