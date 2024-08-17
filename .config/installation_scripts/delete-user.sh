#!/bin/bash

source ./ANSI-colors.sh
source ./utils.sh

checkForSudo

# Prompt for the username to delete
print ${CYAN} "◉ Enter the username to delete:"
read -p "❯ " username

# Check if the user exists
if ! id "$username" &>/dev/null; then
  print ${RED} "⚠ User $username does not exist."
  exit 1
fi

userdel -r "$username" &>/dev/null
print ${GREEN} "✔ User $username and their home directory, along with their group, have been deleted."

