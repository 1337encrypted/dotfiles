function installDynamicWindowManager() {
  # Check if dwm is already installed
  if command -v dwm &> /dev/null; then
     print ${GREEN} "✔ dwm is already installed.${NC}"
     return
  fi
  
  print ${YELLOW} "\n★ Installing Dynamic Window Manager"

  mkdir -p ~/${username}/.config/dwm
  PATHDWM = ~/${username}/.config/dwm

  # Clone dwm repository
  git clone https://git.suckless.org/dwm ${PATHDWM} > /dev/null 2>> error.log
  cd ${PATHDWM}
  sudo make clean install > /dev/null 2>> error.log

  echo "exec dwm" > ~/.xinitrc
  print ${MAGENTA} "dwm added to xinitrc"
  echo "startx" >> ~/.bash_profile
  print ${MAGENTA} "startx added to .bash_profile"
  print ${GREEN} "✔ dwm installation completed."

  cd -
}
