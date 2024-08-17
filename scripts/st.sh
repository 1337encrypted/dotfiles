#!/bin/bash

# Clone st repository
git clone https://git.suckless.org/st
cd st

# Compile and install st
sudo make clean install

# Print success message
echo "st (Simple Terminal) installation completed." 

