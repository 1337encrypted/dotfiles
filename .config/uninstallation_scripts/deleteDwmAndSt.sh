#!/bin/bash

# Source the functions.sh file
source ../installation_scripts/ANSI-colors.sh
source ../installation_scripts/utils.sh

# Check for sudo privileges
checkForSudo

# Function to remove dwm
function removeDwm() {
    # Remove dwm configuration directory
    if [ -d "$HOME/.config/dwm" ]; then
        print ${YELLOW} "Removing dwm configuration directory..."
        rm -rf "$HOME/.config/dwm"
        print ${GREEN} "✔ dwm configuration directory removed."
    else
        print ${RED} "⚠ dwm configuration directory does not exist."
    fi

    # Remove dwm binary
    if [ -f "/usr/local/bin/dwm" ]; then
        print ${YELLOW} "Removing dwm binary..."
        sudo rm -f "/usr/local/bin/dwm"
        print ${GREEN} "✔ dwm binary removed."
    else
        print ${RED} "⚠ dwm binary does not exist."
    fi
}

# Function to remove st (Simple Terminal)
function removeSt() {
    # Remove st configuration directory
    if [ -d "$HOME/.config/st" ]; then
        print ${YELLOW} "Removing st configuration directory..."
        rm -rf "$HOME/.config/st"
        print ${GREEN} "✔ st configuration directory removed."
    else
        print ${RED} "⚠ st configuration directory does not exist."
    fi

    # Remove st binary
    if [ -f "/usr/local/bin/st" ]; then
        print ${YELLOW} "Removing st binary..."
        sudo rm -f "/usr/local/bin/st"
        print ${GREEN} "✔ st binary removed."
    else
        print ${RED} "⚠ st binary does not exist."
    fi
}

# Call the functions to remove dwm and st
removeDwm
removeSt
