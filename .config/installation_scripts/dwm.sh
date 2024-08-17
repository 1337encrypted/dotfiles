function installDynamicWindowManager() {
  # Check if dwm is already installed
  if command -v dwm &> /dev/null; then
     print ${GREEN} "✔ dwm is already installed."
     return
  fi
  
  print ${YELLOW} "\n★ Installing Dynamic Window Manager"

  mkdir -p ~/.config/dwm
  PATH_DWM = ~/.config/dwm

  # Clone dwm repository
  git clone https://git.suckless.org/dwm ${PATHDWM} > /dev/null 2>> error.log
  cd ${PATH_DWM}
  sudo make clean install > /dev/null 2>> error.log

  append_if_not_present ~/.xinitrc "exec dwm"
  append_if_not_present ~/.bash_profile "startx"

  print ${GREEN} "✔ dwm installation completed."
  cd -
}
