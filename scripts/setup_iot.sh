#!/usr/bin/env bash

# Finish Python3 set up
sudo apt install -y python3-venv
echo "alias python=python3" >> $HOME/.bashrc

# Install Lab tooling
sudo apt install -y minicom
sudo apt install -y curl
bash <(curl -s https://thonny.org/installer-for-linux)