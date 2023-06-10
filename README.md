### Necessary programs:
    - EWW (of course)
    - playerctl to see and control music
    - Jetbrains Mono Nerdfont to get some glyphs and icons, though I am moving to using just images
    - Pipewire with WirePlumber to control volume

## To get weather information you need to create the file `~/.config/eww/personal/personal.txt` and make sure it contains your openweathermap.org API key (APPID) on the first line, and the code for your city on the second. The best way I've found to see the code is to download a giant file called city.list.json.gz from [here](http://bulk.openweathermap.org/sample/), then open it and search for your city

## The launch script included currently only works on Arch Linux 
I will look into fixing it for more distros in the future, however, you can still launch all necessary windows from CLI with the command found in the script `eww open-many ...`
