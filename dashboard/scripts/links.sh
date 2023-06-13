#!/bin/bash

config="$HOME/.config/eww/dashboard"
EWW="/usr/bin/eww -c ${config}"
close="${EWW} close dashboard bg"

cmd="firefox --new-tab"

if [[ "$1" == "--mail" ]]; then
    ${cmd} "https://mail.google.com"
    $close
elif [[ "$1" == "--gh" ]]; then
    ${cmd} "https://github.com"
    $close
elif [[ "$1" == "--rd" ]]; then
    ${cmd} "https://reddit.com"
    $close
elif [[ "$1" == "--yt" ]]; then
    ${cmd} "https://youtube.com"
    $close
fi
