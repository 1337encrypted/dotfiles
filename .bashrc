# ~/.bashrc
# Author: Yash Herekar

# Include ~/.bash_aliases file
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Add current directory to PATH
export PATH="$PATH:."

#exec fish
