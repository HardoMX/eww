#!/bin/bash

eww_executable="~/eww/target/release/eww"
close="$eww_executable close dashboard"

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
    notify-send 'somethin with "folders.sh" went wrong'
fi
