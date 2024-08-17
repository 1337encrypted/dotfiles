function createUser() {
    # Check for sudo privileges
    checkForSudo

    print ${YELLOW} "\n★ Creating new user account"

    # Prompt for the new username
    print ${CYAN} "◉ Enter the new username:"
    read -p "❯ " username

    # Check if the user already exists
    if id "$username" &>/dev/null; then
        print ${RED} "⚠ User $username already exists, pick another one."
        return 1  # Exit the function with an error code
    fi

    # Create the user without home directory and add to specified groups
    useradd --no-create-home -G wheel,audio,video -s /bin/bash "$username"
    mkdir /home/"$username"
    chown "$username":"$username" /home/"$username"

    # Set the password for the new user
    print ${CYAN} "◉ Set the password for $username:"
    passwd "$username"

    # Display user information
    user_info=$(id "$username")
    print ${YELLOW} "${user_info}"

    # Check if the password setting was successful
    if [ $? -eq 0 ]; then
        print ${GREEN} "✔ User $username created successfully."
    else
        print ${RED} "✘ User $username was created, but the password was not set."
        return 1
    fi
}