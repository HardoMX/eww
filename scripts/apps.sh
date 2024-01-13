#!/bin/bash

close="eww close dashboard"

if [[ "$1" == "--fs" ]]; then
    if ! command -v thunar &> /dev/null 
    then
        notify-send 'Thunar seems to not be installed'
        echo 'Thunar seems to not be installed'
    else
        thunar &
        $close
    fi
elif [[ "$1" == "--term" ]]; then
    if ! command -v kitty &> /dev/null 
    then
        notify-send 'Kitty seems to not be installed'
        echo 'Kitty seems to not be installed'
    else
        kitty &
        $close
    fi
elif [[ "$1" == "--nvim" ]]; then
    if ! command -v nvim &> /dev/null 
    then
        notify-send 'Neovim seems to not be installed'
        echo 'Neovim seems to not be installed'
    else
        kitty nvim &
        $close
    fi
elif [[ "$1" == "--vscode" ]]; then
    if ! command -v code &> /dev/null 
    then
        notify-send 'VSCode seems to not be installed'
        echo 'VSCode seems to not be installed'
    else
        code &
        $close
    fi
elif [[ "$1" == "--discord" ]]; then
    if ! command -v discord &> /dev/null 
    then
        notify-send 'Discord seems to not be installed'
        echo 'Discord seems to not be installed'
    else
        discord &
        $close
    fi
elif [[ "$1" == "--vbox" ]]; then
    if ! command -v virtualbox &> /dev/null 
    then
        notify-send 'Virtualbox seems to not be installed'
        echo 'Virtualbox seems to not be installed'
    else
        virtualbox &
        $close
    fi
elif [[ "$1" == "--gimp" ]]; then
    if ! command -v gimp &> /dev/null
    then 
        notify-send 'Gimp seems to not be installed'
        echo 'Gimpt seems to not be installed'
    else
        gimp &
        $close
    fi
elif [[ "$1" == "--ff" ]]; then
    if ! command -v firefox &> /dev/null
    then
        notify-send 'Firefox seems to not be installed'
        echo 'Firefox seems to not be installed'
    else
        firefox &
        $close
    fi
else
    notify-send 'Something with "apps.sh" went wrong'
    echo 'error'
fi
