KEY=`sed '1!d' ~/.config/eww/personal/personal.txt`
ID=`sed '2!d' ~/.config/eww/personal/personal.txt`
UNIT="metric"  #Can be either "metric" or "imperial"

weather=`curl -sf "http://api.openweathermap.org/data/2.5/weather?APPID="$KEY"&id="$ID"&units="$UNIT""`

if [[ "$1" == "--temp" ]]; then
    echo $weather | jq -r ".main.temp"
elif [[ "$1" == "--feels" ]]; then
    echo $weather | jq -r ".main.feels_like"
elif [[ "$1" == "--condition" ]]; then
    echo $weather | jq -r ".weather[].description"
elif [[ "$1" == "--locale" ]]; then
    echo $weather | jq ".name"
    echo $weather | jq ".sys.country"
else
    echo "bad syntax, needs --<command>"
fi
