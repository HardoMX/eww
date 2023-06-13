### Necessary programs:
    - EWW (of course)
    - playerctl to see and control music
    - Jetbrains Mono Nerdfont to get some glyphs and icons, though I am moving to using just images
    - Pipewire with WirePlumber to control volume

## To get some features working you need to do the following:
- #### Create the file `~/.config/eww/personal/personal.txt`
- #### For weather:
    1. Create an account and an APPID on openweathermap.org
    2. Paste your APPID into the first line of the file
    3. Find the code for your location, the easiest way I found was to download the giant file called city.list.json.gz from [here](http://bulk.openweathermap.org/sample/)
    4. Paste the location code into the second line of your `personal.txt `file
- #### For gmail integration:
    1. Make sure IMAP is turned on in gmail
    2. Create an app password, follow [these](https://support.google.com/mail/answer/185833) instructions
    3. Paste your gmail address into the third line of your `personal.txt` file
    4. Paste your app password into the fourth line

** Note: these steps will be automated in a future install script **

## The launch scripts included currently might only work on Arch Linux 
I will look into fixinchecking it for more distros in the future, however, you can still launch all necessary windows from CLI with the command found in the script `eww open-many ...`

### Legal disclosure for icons and images
- [roundicons](https://www.flaticon.com/authors/roundicons)
- [Pixel perfect](https://www.flaticon.com/authors/pixel-perfect)
- [Freepik](https://www.flaticon.com/authors/freepik)
- [SumberRejeki](https://www.flaticon.com/authors/sumberrejeki)
- [Ardiansyah](https://www.flaticon.com/authors/ardiansyah)
- [riajulislam](https://www.flaticon.com/authors/riajulislam)
- [Md Tanvirul Haque](https://www.flaticon.com/authors/md-tanvirul-haque)
- [Chanut](https://www.flaticon.com/authors/chanut)
- [Frey Wazza](https://www.flaticon.com/authors/frey-wazza)

rawpixel.com on Freepik
Freepik on Freepik
pikisuperstar on Freepik

Jason Long, neovim, CC BY 3.0 <https://creativecommons.org/licenses/by/3.0>, via Wikimedia Commons
Abhishek Pipalva, CC 3.0 <https://creativecommons.org/licenses/by/3.0>, via iconfinder
