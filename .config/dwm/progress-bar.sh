#!/bin/bash

# ANSI color codes
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

function delay() {
    sleep 0.1;
}

CURRENT_PROGRESS=0

function progress() {
    PARAM_PROGRESS=$1
    PARAM_PHASE=$2

    # Choose color based on progress
    if [ $PARAM_PROGRESS -lt 50 ]; then
        COLOR=$RED
    elif [ $PARAM_PROGRESS -lt 75 ]; then
        COLOR=$YELLOW
    else
        COLOR=$GREEN
    fi

    # Display progress with colors
    if [ $CURRENT_PROGRESS -le 0 -a $PARAM_PROGRESS -ge 0 ]  ; then echo -ne "${COLOR}[⣾                                      ] (0%)  $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 5 -a $PARAM_PROGRESS -ge 5 ]  ; then echo -ne "${COLOR}[⣾⣽⣻                                    ] (5%)  $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 10 -a $PARAM_PROGRESS -ge 10 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿                                  ] (10%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 15 -a $PARAM_PROGRESS -ge 15 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯                                ] (15%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 20 -a $PARAM_PROGRESS -ge 20 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾                              ] (20%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 25 -a $PARAM_PROGRESS -ge 25 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻                            ] (25%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 30 -a $PARAM_PROGRESS -ge 30 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿                          ] (30%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 35 -a $PARAM_PROGRESS -ge 35 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯                        ] (35%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 40 -a $PARAM_PROGRESS -ge 40 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾                      ] (40%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 45 -a $PARAM_PROGRESS -ge 45 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻                    ] (45%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 50 -a $PARAM_PROGRESS -ge 50 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿                  ] (50%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 55 -a $PARAM_PROGRESS -ge 55 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯                ] (55%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 60 -a $PARAM_PROGRESS -ge 60 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾              ] (60%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 65 -a $PARAM_PROGRESS -ge 65 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻            ] (65%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 70 -a $PARAM_PROGRESS -ge 70 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿          ] (70%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 75 -a $PARAM_PROGRESS -ge 75 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯        ] (75%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 80 -a $PARAM_PROGRESS -ge 80 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾      ] (80%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 85 -a $PARAM_PROGRESS -ge 85 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻    ] (90%) $PARAM_PHASE ${NC}\r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 90 -a $PARAM_PROGRESS -ge 90 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿  ] (95%) $PARAM_PHASE ${NC}\r" ; delay; fi;
    if [ $CURRENT_PROGRESS -le 95 -a $PARAM_PROGRESS -ge 95 ]; then echo -ne "${COLOR}[⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯⣷⣾⣽⣻⢿⡿⣟⣯] (100%) $PARAM_PHASE ${NC}\r" ; delay; fi;
    if [ $CURRENT_PROGRESS -le 100 -a $PARAM_PROGRESS -ge 100 ]; then echo -ne "\n" ; delay; fi;

    CURRENT_PROGRESS=$PARAM_PROGRESS;
}

for i in $(seq 0 5 100); do
    progress $i
    delay
done
