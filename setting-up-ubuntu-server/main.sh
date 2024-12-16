#!/bin/bash
sudo apt update && sudo apt upgrade -y

./utils.sh && ./docker-install.sh && ./start_banner.sh