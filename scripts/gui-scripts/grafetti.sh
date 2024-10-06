#!/bin/bash

# Set text color to red and reverse video
tput setaf 1
tput rev

# Get the terminal dimensions
h=$(tput lines)
w=$(( $(tput cols) / 6 ))

# Create the pattern to fill the width of the terminal
c=$(seq -ws '_____|' $((w + 1)) | tr -d "0-9")

# Generate the pattern for the height of the terminal
for a in $(seq $((h / 2))); do
    echo "$c"
    echo "${c//|___/___|}"
done

# Reset the cursor position to the top
tput cup 0

# Print the message using `toilet`
toilet -t -f bigmono12 "?LOVE"

# Reset cursor position to the bottom
tput cup $h 0

