#!/bin/bash

config="$HOME/.config/eww/dashboard"
EWW="/usr/bin/eww -c ${config}"

if [[ ! `pidof eww` ]]; then
    ${EWW} daemon
    sleep 1
fi

${EWW} open-many bg dashboard
