source ./ANSI-colors.sh
source ./utils.sh
source ./create-user.sh
source ./packages.sh
source ./dwm.sh
source ./st.sh

checkForSudo

# Prompt for the username and pass it to createUser
print ${CYAN} "◉ Enter the new username:"
read -p "❯ " username

if id "$username" &>/dev/null; then
    print ${RED} "⚠ User $username already exists, pick another one."
    exit 1  # Exit the function with an error code
fi

createUser "$username"

CONFIG_PATH=/home/${username}/.config
mkdir -p "${CONFIG_PATH}" 2>> error.log

installPackages
installDynamicWindowManager "$username"
installSimpleTerminal "$username"
cleanupPackages
