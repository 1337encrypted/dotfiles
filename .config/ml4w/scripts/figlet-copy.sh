#!/bin/bash

# Display initial ASCII art
cat <<"EOF"

░█▀▀░▀█▀░█▀▀░█░░░█▀▀░▀█▀
░█▀▀░░█░░█░█░█░░░█▀▀░░█░
░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░░▀░

EOF
# -----------------------------------------------------
# Script to create ASCII font-based header on user input
# and copy the result to the clipboard
# -----------------------------------------------------

# Use the provided font or default to 'pagga'
font=${1:-pagga}

# Prompt user for text input
read -p "Enter the text for ASCII encoding: " mytext

# Create or clear the figlet.txt file
> ~/figlet.txt

# Add ASCII header and font-based text to the file
echo "cat <<\"EOF\"" >> ~/figlet.txt
figlet -f "$font" "$mytext" >> ~/figlet.txt
echo "" >> ~/figlet.txt
echo "EOF" >> ~/figlet.txt

# Copy the result to clipboard
cat ~/figlet.txt | wl-copy
xclip -sel clip < ~/figlet.txt

# Inform the user
echo "Text copied to clipboard!"
