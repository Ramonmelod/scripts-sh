#!/bin/bash

echo "utils.sh runing"
sudo apt install git gcc # installing git and gcc

echo "installing asdf"

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.1
echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc
echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc