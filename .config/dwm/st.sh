function installSimpleTerminal() {
    local username=$1
    # Check if st is installed
    if command -v st &>/dev/null; then
        print ${GREEN} "✔ st is already installed."
        return
    fi

    print ${YELLOW} "\n★ Installing st (Simple Terminal) ..."

    # Define the path for st repository
    local PATH_ST="/home/${username}/.config/st"

    # Check if the st directory already exists
    if [ -d "$PATH_ST" ]; then
        print ${GREEN} "✔ st directory already exists at $PATH_ST."
    else
        # Create the directory and clone the st repository
        mkdir -p "$PATH_ST"
        git clone https://github.com/1337encrypted/st.git "$PATH_ST" > /dev/null 2>> error.log
    fi

    cd "$PATH_ST" || { print ${RED} "✘ Failed to navigate to $PATH_ST"; return; }
    sudo make clean install > /dev/null 2>> error.log

    if [ $? -eq 0 ]; then
	    print ${GREEN} "✔ Simple Terminal installation completed."
    else
	    print ${RED} "✘ Failed to install Simple Terminal."
    fi

    cd .. || { print ${RED} "✘ Failed to return to the previous directory"; return; }
}
