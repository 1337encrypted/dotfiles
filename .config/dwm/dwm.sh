function installDynamicWindowManager() {
    local username=$1

    # Check if dwm is already installed
    if command -v dwm &> /dev/null; then
        print ${GREEN} "✔ dwm is already installed."
        return
    fi

    print ${YELLOW} "\n★ Installing Dynamic Window Manager"

    # Define the path for dwm repository
    local PATH_DWM="/home/${username}/.config/dwm"

    # Check if the dwm directory already exists
    if [ -d "$PATH_DWM" ]; then
        print ${GREEN} "✔ dwm directory already exists at $PATH_DWM."
    else
        # Create the directory and clone the dwm repository
        mkdir -p "$PATH_DWM"
        git clone https://github.com/1337encrypted/dwm.git "$PATH_DWM" > /dev/null 2>> error.log
    fi

    cd "$PATH_DWM" || { print ${RED} "✘ Failed to navigate to $PATH_DWM"; return; }
    sudo make clean install > /dev/null 2>> error.log
    cd .. || { print ${RED} "✘ Failed to return to the previous directory"; return; }

    # Append to .xinitrc and .bash_profile if not already present
    append_if_not_present "/home/${username}/.xinitrc" "exec dwm"
    append_if_not_present "/home/${username}/.bash_profile" "startx"

    print ${GREEN} "✔ dwm installation completed."
}

