#!/usr/bin/env bash

# Configure Python alias
echo "alias python=python3" >> $HOME/.bashrc
# Install Thonny for the user
yes "" | bash <(curl -s https://thonny.org/installer-for-linux)
# Configure minicom
# cat <<- EOF > ~/.minirc.dfl
#     # Machine-generated file - use "minicom -s" to change parameters.
#     pu port             /dev/ttyUSB0
#     pu rtscts           No
# EOF