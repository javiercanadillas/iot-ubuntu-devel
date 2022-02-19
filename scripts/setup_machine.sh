#!/usr/bin/env bash

# Finish Python3 set up
sudo apt install -y python3-venv
# Install basic tooling
sudo apt install -y minicom
sudo apt install -y curl
# Allow vagrant user access to /dev/ttyUSB0
usermod -a -G dialout vagrant