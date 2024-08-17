#!/bin/bash

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Function to print messages in color
function print_message() {
    local color=$1
    shift
    echo -e "${color}$@${NC}"
}

# Update package database and upgrade all packages
print_message $YELLOW "Updating package database and upgrading all packages..."
sudo pacman -Syu --noconfirm

# Function to check if a package is installed
function check_and_install() {
    local package=$1
    if ! pacman -Qq $package &>/dev/null; then
        print_message $YELLOW "$package is not installed. Installing..."
        sudo pacman -S --noconfirm $package
        print_message $GREEN "$package has been installed."
    else
        print_message $GREEN "$package is already installed."
    fi
}

# man-db, man-pages
check_and_install man-db 
check_and_install man-pages

# git
check_and_install git

# neovim 
check_and_install neovim

# Optionally, clean up any unused packages
print_message $YELLOW "Cleaning up unused packages..."
sudo pacman -Rns $(pacman -Qdtq) --noconfirm

# Print success message
print_message $GREEN "Post-installation script completed."

