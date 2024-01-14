#!/bin/bash

eww_executable="~/eww/target/release/eww"
close="$eww_executable close dashboard"
cmd="firefox --new-tab"

if [[ "$1" == "--gmail" ]]; then
    ${cmd} "https://mail.google.com"
    $close
elif [[ "$1" == "--pmail" ]]; then
    ${cmd} "https://mail.proton.me"
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
