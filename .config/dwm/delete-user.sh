function deleteUser() {
	checkForSudo
	
	local username=$1

	# Check if the user exists
	if ! id "$username" &>/dev/null; then
	  print ${RED} "⚠ User $username does not exist."
	  exit 1
	fi

	userdel -r "$username" &>/dev/null
	print ${GREEN} "✔ User $username and their home directory, along with their group, have been deleted."
}

function deleteConfigFiles() {
	local username=$1

	if [ -f /home/${username}/.config ]; then
		rm -rf /home/${username}/.config
		print ${GREEN} "✔ Successfully deleted .config folder"
	else
		print ${RED} "⚠ .config folder doesn't exist"
	fi
}
