#!/bin/bash

EWW="/usr/bin/eww -c $HOME/.config/eww"

## Start daemon if not already running
if [[ ! `pidof eww` ]]; then
    ${EWW} daemon
    sleep 1
fi

${EWW} open-many top_bar right_info music_bar
