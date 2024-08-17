#!/bin/bash

# Define ANSI color codes

## Standard Colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

## Bold Colors
BOLD_BLACK='\033[1;30m'
BOLD_RED='\033[1;31m'
BOLD_GREEN='\033[1;32m'
BOLD_YELLOW='\033[1;33m'
BOLD_BLUE='\033[1;34m'
BOLD_MAGENTA='\033[1;35m'
BOLD_CYAN='\033[1;36m'
BOLD_WHITE='\033[1;37m'

## Bright Colors (High Intensity)
BRIGHT_BLACK='\033[0;90m'
BRIGHT_RED='\033[0;91m'
BRIGHT_GREEN='\033[0;92m'
BRIGHT_YELLOW='\033[0;93m'
BRIGHT_BLUE='\033[0;94m'
BRIGHT_MAGENTA='\033[0;95m'
BRIGHT_CYAN='\033[0;96m'
BRIGHT_WHITE='\033[0;97m'

## Bold Bright Colors (Bold High Intensity)
BOLD_BRIGHT_BLACK='\033[1;90m'
BOLD_BRIGHT_RED='\033[1;91m'
BOLD_BRIGHT_GREEN='\033[1;92m'
BOLD_BRIGHT_YELLOW='\033[1;93m'
BOLD_BRIGHT_BLUE='\033[1;94m'
BOLD_BRIGHT_MAGENTA='\033[1;95m'
BOLD_BRIGHT_CYAN='\033[1;96m'
BOLD_BRIGHT_WHITE='\033[1;97m'

## Background Colors
BG_BLACK='\033[40m'
BG_RED='\033[41m'
BG_GREEN='\033[42m'
BG_YELLOW='\033[43m'
BG_BLUE='\033[44m'
BG_MAGENTA='\033[45m'
BG_CYAN='\033[46m'
BG_WHITE='\033[47m'

## Bright Background Colors
BG_BRIGHT_BLACK='\033[0;100m'
BG_BRIGHT_RED='\033[0;101m'
BG_BRIGHT_GREEN='\033[0;102m'
BG_BRIGHT_YELLOW='\033[0;103m'
BG_BRIGHT_BLUE='\033[0;104m'
BG_BRIGHT_MAGENTA='\033[0;105m'
BG_BRIGHT_CYAN='\033[0;106m'
BG_BRIGHT_WHITE='\033[0;107m'

## Reset
NC='\033[0m' # No Color

function listAnsiColors() {
	## List colors with examples
	echo -e "${BLACK}Black${NC} - Code: \\\\033[0;30m"
	echo -e "${RED}Red${NC} - Code: \\\\033[0;31m"
	echo -e "${GREEN}Green${NC} - Code: \\\\033[0;32m"
	echo -e "${YELLOW}Yellow${NC} - Code: \\\\033[0;33m"
	echo -e "${BLUE}Blue${NC} - Code: \\\\033[0;34m"
	echo -e "${MAGENTA}Magenta${NC} - Code: \\\\033[0;35m"
	echo -e "${CYAN}Cyan${NC} - Code: \\\\033[0;36m"
	echo -e "${WHITE}White${NC} - Code: \\\\033[0;37m"

	echo -e "${BOLD_BLACK}Bold Black${NC} - Code: \\\\033[1;30m"
	echo -e "${BOLD_RED}Bold Red${NC} - Code: \\\\033[1;31m"
	echo -e "${BOLD_GREEN}Bold Green${NC} - Code: \\\\033[1;32m"
	echo -e "${BOLD_YELLOW}Bold Yellow${NC} - Code: \\\\033[1;33m"
	echo -e "${BOLD_BLUE}Bold Blue${NC} - Code: \\\\033[1;34m"
	echo -e "${BOLD_MAGENTA}Bold Magenta${NC} - Code: \\\\033[1;35m"
	echo -e "${BOLD_CYAN}Bold Cyan${NC} - Code: \\\\033[1;36m"
	echo -e "${BOLD_WHITE}Bold White${NC} - Code: \\\\033[1;37m"

	echo -e "${BRIGHT_BLACK}Bright Black${NC} - Code: \\\\033[0;90m"
	echo -e "${BRIGHT_RED}Bright Red${NC} - Code: \\\\033[0;91m"
	echo -e "${BRIGHT_GREEN}Bright Green${NC} - Code: \\\\033[0;92m"
	echo -e "${BRIGHT_YELLOW}Bright Yellow${NC} - Code: \\\\033[0;93m"
	echo -e "${BRIGHT_BLUE}Bright Blue${NC} - Code: \\\\033[0;94m"
	echo -e "${BRIGHT_MAGENTA}Bright Magenta${NC} - Code: \\\\033[0;95m"
	echo -e "${BRIGHT_CYAN}Bright Cyan${NC} - Code: \\\\033[0;96m"
	echo -e "${BRIGHT_WHITE}Bright White${NC} - Code: \\\\033[0;97m"

	echo -e "${BOLD_BRIGHT_BLACK}Bold Bright Black${NC} - Code: \\\\033[1;90m"
	echo -e "${BOLD_BRIGHT_RED}Bold Bright Red${NC} - Code: \\\\033[1;91m"
	echo -e "${BOLD_BRIGHT_GREEN}Bold Bright Green${NC} - Code: \\\\033[1;92m"
	echo -e "${BOLD_BRIGHT_YELLOW}Bold Bright Yellow${NC} - Code: \\\\033[1;93m"
	echo -e "${BOLD_BRIGHT_BLUE}Bold Bright Blue${NC} - Code: \\\\033[1;94m"
	echo -e "${BOLD_BRIGHT_MAGENTA}Bold Bright Magenta${NC} - Code: \\\\033[1;95m"
	echo -e "${BOLD_BRIGHT_CYAN}Bold Bright Cyan${NC} - Code: \\\\033[1;96m"
	echo -e "${BOLD_BRIGHT_WHITE}Bold Bright White${NC} - Code: \\\\033[1;97m"

	echo -e "${BG_BLACK}Background Black${NC} - Code: \\\\033[40m"
	echo -e "${BG_RED}Background Red${NC} - Code: \\\\033[41m"
	echo -e "${BG_GREEN}Background Green${NC} - Code: \\\\033[42m"
	echo -e "${BG_YELLOW}Background Yellow${NC} - Code: \\\\033[43m"
	echo -e "${BG_BLUE}Background Blue${NC} - Code: \\\\033[44m"
	echo -e "${BG_MAGENTA}Background Magenta${NC} - Code: \\\\033[45m"
	echo -e "${BG_CYAN}Background Cyan${NC} - Code: \\\\033[46m"
	echo -e "${BG_WHITE}Background White${NC} - Code: \\\\033[47m"

	echo -e "${BG_BRIGHT_BLACK}Bright Background Black${NC} - Code: \\\\033[0;100m"
	echo -e "${BG_BRIGHT_RED}Bright Background Red${NC} - Code: \\\\033[0;101m"
	echo -e "${BG_BRIGHT_GREEN}Bright Background Green${NC} - Code: \\\\033[0;102m"
	echo -e "${BG_BRIGHT_YELLOW}Bright Background Yellow${NC} - Code: \\\\033[0;103m"
	echo -e "${BG_BRIGHT_BLUE}Bright Background Blue${NC} - Code: \\\\033[0;104m"
	echo -e "${BG_BRIGHT_MAGENTA}Bright Background Magenta${NC} - Code: \\\\033[0;105m"
	echo -e "${BG_BRIGHT_CYAN}Bright Background Cyan${NC} - Code: \\\\033[0;106m"
	echo -e "${BG_BRIGHT_WHITE}Bright Background White${NC} - Code: \\\\033[0;107m"

	echo -e "${NC}No Color${NC} - Code: \\\\033[0m"

	## Text Styles
	echo -e "\e[1mbold\e[0m - Bold"
	echo -e "\e[3mitalic\e[0m - Italic"
	echo -e "\e[1m\e[3mbold italic\e[0m - Bold Italic"
	echo -e "\e[4munderline\e[0m - Underline"
	echo -e "\e[9mstrikethrough\e[0m - Strikethrough"
	echo -e "\e[31mHello World\e[0m - Red Text"
	echo -e "\x1B[31mHello World\e[0m - Red Text (Alternative Escape Code)"
	echo -e "\e[5mThis text will blink if your terminal supports it.\e[0m"
}
