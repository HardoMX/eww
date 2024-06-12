#!/usr/bin/env bash

if [[ "$1" == "--current" ]]; then
    hyprctl monitors -j | jq '.[] | select(.focused) | .activeWorkspace.id'

    socat -u UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | stdbuf -o0 awk -F '>>|,' -e '/^workspace>>/ {print $2}' -e '/^focusedmon>>/ {print $3}'
elif [[ "$1" == "--get" ]]; then
    spaces (){
        WORKSPACE_WINDOWS=$(hyprctl workspaces -j | jq 'map({key: .id | tostring, value: .windows}) | from_entries')
        seq 1 10 | jq --argjson windows "${WORKSPACE_WINDOWS}" --slurp -Mc 'map(tostring) | map({id: ., windows: ($windows[.]//0)})'
    }

    spaces
    socat -u UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | while read -r line; do
        spaces
    done
else
    echo Use --current to track workspace, and --get to get all workspaces and info about them
fi
