#!/usr/bin/env bash

# Minimal XFCE installation, non interactive
sudo DEBIAN_FRONTEND=noninteractive apt install -y xfce4 xfce4-goodies lightdm
# Set up Lightdm as the default Display Manaer, the right way
echo "/usr/sbin/lightdm" > /etc/X11/default-display-manager
DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true dpkg-reconfigure lightdm
echo set shared/default-x-display-manager lightdm | debconf-communicate
# Remove previous Unity display manager configuration
sudo rm /usr/share/lightdm/lightdm.conf.d/50-unity-greeter.conf
# Create new display manager configuration file
# Vagrant file provisioner uses scp, there's no real sudo option there
# so using a heredoc to create the file with root permissions
sudo cat <<- EOF > /usr/share/lightdm/lightdm.conf.d/50-xfce-greeter.conf
[SeatDefaults]
    greeter-session=unity-greeter
    user-session=xfce
    allow-guest=false
    autologin-user=vagrant
    autologin-user-timeout=0
EOF
# Set up Spanish keyboard
sudo setxkbmap es
sudo sed -i 's/XKBLAYOUT=\"\w*"/XKBLAYOUT=\"es\"/g' /etc/default/keyboard