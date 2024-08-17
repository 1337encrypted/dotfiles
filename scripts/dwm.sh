#!/bin/bash

# Update system and install necessary packages
sudo pacman -S --needed --noconfirm base-devel xorg-server xorg-xinit libx11 libxinerama libxft webkit2gtk

# Clone dwm repository
git clone https://git.suckless.org/dwm
cd dwm

# Compile and install dwm
sudo make clean install

# Create a .xinitrc file to start dwm
echo "exec dwm" > ~/.xinitrc

# Ensure startx runs on login by adding it to .bash_profile
echo "startx" >> ~/.bash_profile

# Print success message
echo "dwm installation completed."

