#!/bin/bash

# Check if a command-line argument is provided
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 \"Your message here\""
    exit 1
fi

# Combine all command-line arguments into a single string
user_input="$*"

# Print the message with simulated typing effect
echo "$user_input" | pv -qL 10

