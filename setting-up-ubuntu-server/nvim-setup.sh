#!/bin/bash

echo -e "\n\n\n nvim-setup.sh running\n\n\n"

sudo apt install neovim -y

rm -rf ~/.config/nvim 

git clone https://github.com/Ramonmelod/nvim-config.git ~/.config/nvim

git clone https://github.com/wbthomason/packer.nvim.git ~/.local/share/nvim/site/pack/packer/start/packer.nvim


