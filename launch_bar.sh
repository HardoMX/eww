#!/bin/bash

EWW="$HOME/eww/target/release/eww -c $HOME/.config/eww"

## Start daemon if not already running
if [[ ! `pidof eww` ]]; then
    ${EWW} daemon
    sleep 1
fi

${EWW} open-many bar workspaces date_full
