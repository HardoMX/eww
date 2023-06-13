#!/bin/bash

config="$HOME/.config/eww/dashboard"
EWW="/usr/bin/eww -c ${config}"
close="${EWW} close dashboard bg"

if [[ "$1" == "--doc" ]]; then
    thunar ~/Documents &
    $close
elif [[ "$1" == "--dl" ]]; then
    thunar ~/Downloads &
    $close
elif [[ "$1" == "--pics" ]]; then
    thunar ~/Pictures &
    $close
elif [[ "$1" == "--conf" ]]; then
    thunar ~/.config &
    $close
else
    notify-send 'somethin went wrong'
fi
