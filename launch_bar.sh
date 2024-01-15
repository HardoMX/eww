#!/bin/bash

EWW="$HOME/eww/target/release/eww -c $HOME/.config/eww"

if [[ `!pidof eww` ]]; then
    ${EWW} daemon
    sleep 1
fi

${EWW} open bar
