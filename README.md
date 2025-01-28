### Necessary programs:
    - EWW (of course)
    - playerctl to see and control music
    - Jetbrains Mono Nerdfont to get some glyphs and icons, though I am moving to using just images
    - Pipewire with WirePlumber to control volume
    - jq for json-parsing in bash
    - socat for hyprland script
    - brightnessctl to control screen brightness

## To get some features working you need to do the following:
- #### Create the file `~/.config/eww/scripts/secrets.txt`
- #### For weather:
    1. Create an account and an APPID on openweathermap.org
    2. Paste your APPID into the first line of the file
    4. Paste your city code into the second line of your `secrets.txt `file

## The launch scripts included currently might only work on Arch Linux 
I will look into checking it for more distros in the future, however, you can still launch all necessary windows from CLI with the command found in the script `eww open-many ...`
