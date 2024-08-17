function installPackages() {
    checkForSudo
  
    print ${YELLOW} "\n★ Installing packages..."

    # Check if the package list file exists
    local package_file="packages.txt"
    if [[ ! -f $package_file ]]; then
        print ${RED} "⚠ Package list file $package_file not found."
        exit 1
    fi

    # Read and install packages from the file
    while IFS= read -r package; do
        # Skip empty lines and comments
        [[ -z "$package" || "$package" =~ ^# ]] && continue
        checkAndInstall "$package"
    done < "$package_file"
}

function cleanupPackages() {
    # Optionally, clean up any unused packages
    print ${YELLOW} "\n★ Cleaning up unused packages..."

    unused_packages=$(pacman -Qdtq)
    # Check if there are any unused packages
    if [ -z "$unused_packages" ]; then
        print ${GREEN} "✔ No unused packages to remove."
    else
        pacman -Rns $unused_packages --noconfirm
        if [ $? -eq 0 ]; then
            print ${GREEN} "✔ Unused packages removed successfully."
        else
            print ${RED} "⚠ Failed to remove unused packages."
        fi
    fi

    # Print success message
    print ${YELLOW} "\n★ Post-installation script completed."
}

# Function to check if a package is installed
function checkAndInstall() {
    local package=$1
    if ! pacman -Qq $package > /dev/null 2>> error.log; then
        print $YELLOW "◯ $package is not installed. Installing..."
        sudo pacman -S --noconfirm $package > /dev/null 2>> error.log
        print $GREEN "✔ $package has been installed."
    else
        print $GREEN "✔ $package is already installed."
    fi
}

