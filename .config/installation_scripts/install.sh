source ./ANSI-colors.sh
source ./utils.sh
source ./create-user.sh
source ./packages.sh
source ./dwm.sh
source ./st.sh

checkForSudo

# Create the user and capture the username
createUser
if [ $? -ne 0 ]; then
    exit 1
fi

CONFIG_PATH=~/${username}/.config
mkdir -p "${CONFIG_PATH}" 2>> error.log

installPackages
installDynamicWindowManager
installSimpleTerminal
cleanupPackages
