#!/bin/bash

locale="laxa,sweden"

if [[ "$1" == "--temp" ]]; then
    inxi -W $locale | awk 'NR == 2 {print $3}'
elif [[ "$1" == "--cond" ]]; then
    inxi -W $locale | awk 'NR == 2 {print $8, substr($9, 1, length($9)-1)}' #Last part removes last character, needed to remove unicode for ctrl-c in the eww bar
elif [[ "$1" == "--locale" ]]; then
    echo $locale
fi
