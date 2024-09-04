#!/bin/bash

source ./ANSI-colors.sh
source ./utils.sh
source ./delete-dwm-st.sh
source ./delete-user.sh

checkForSudo

# Prompt for the username to delete
print ${CYAN} "◉ Enter the username to delete:"
read -p "❯ " username

# Check if the user does not exist
if ! id "$username" &>/dev/null; then
    print ${RED} "⚠ User $username doesn't exist."
    exit 1  # Exit the script with an error code
fi

removeDwm
removeSt
deleteConfigFiles "$username"
deleteUser "$username"

