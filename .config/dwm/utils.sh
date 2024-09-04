#!/bin/bash

# Function to print messages in color
function print() {
    local color=$1
    shift
    echo -e "${color}$@${NC}"
}

# Check if the script is run as root
checkForSudo() {
	if [ "$(id -u)" -ne 0 ]; then
		print ${RED}"✘ Please run this script as root or with sudo."
	  	exit 1
	fi
}

# Ask function
function ask() {
	local prompt="${1}"
	local res

	while true; do
		# Prompt the user
		print ${CYAN}"$prompt$: "
		read -p "> " res

		if [ -z "$res" ] || [ "$res" = "y" ] || [ "$res" = "Y" ]; then
			return 0
		elif [ "$res" = "n" ] || [ "$res" = "N" ]; then
			return 1
		else
			print ${RED}"⚠ Invalid response. Please enter 'y' for yes or 'n' for no."
		fi
	done
}

# Function to check if a line is present in a file
function append_if_not_present() {
    local file=$1
    local line=$2

    if grep -Fxq "$line" "$file" 2> error.log; then
        # Line is already present
        return
    else
        # Append the line to the file
        echo "$line" >> "$file"
        print ${MAGENTA} "✔ Added \"$line\" to $file"
    fi
}
