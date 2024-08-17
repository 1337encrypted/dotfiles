function installSimpleTerminal() {
  # Check if st is installed
  if command -v st &>/dev/null; then
    print ${GREEN} "✔ st is already installed."
    return
  fi

  # Proceed with installation if st is not found
  print ${YELLOW} "\n★ Installing st (Simple Terminal) ..."
  
  mkdir -p ${CONFIF_PATH}/st
  PATH_ST = ${CONFIG_PATH}/st

  # Clone the repository
  git clone https://git.suckless.org/st ${PATH_ST}
  cd ${PATH_ST}

  # Build and install
  sudo make clean install

  # Check if installation was successful
  if [ $? -eq 0 ]; then
    print ${GREEN} "✔ Simple Terminal installation completed."
  else
    print ${RED} "✘ Failed to install Simple Terminal."
  fi

  # Return to the previous directory
  cd -
}

