# Function to remove dwm
function removeDwm() {
    # Remove dwm binary
    if [ -f "/usr/local/bin/dwm" ]; then
        print ${YELLOW} "Removing dwm binary ..."
        rm -f "/usr/local/bin/dwm" "/usr/local/share/man/man1/dwm.1"
        print ${GREEN} "✔ dwm binary removed along with man pages."
    else
        print ${RED} "⚠ dwm binary does not exist."
    fi
}

# Function to remove st (Simple Terminal)
function removeSt() {
    # Remove st binary
    if [ -f "/usr/local/bin/st" ]; then
        print ${YELLOW} "Removing st binary ..."
        rm -f "/usr/local/bin/st" "/usr/local/share/man/man1/st.1"
        print ${GREEN} "✔ st binary removed along with man pages."
    else
        print ${RED} "⚠ st binary does not exist."
    fi
}

