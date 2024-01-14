#!/bin/bash

KEY=`sed '1!d' ./secret.txt`
ID=`sed '2!d' ./secret.txt`
UNIT="metric"

weather=`curl -sf "http://api.openweathermap.org/data/2.5/weather?APPID="$KEY"&id="$ID"&units="$UNIT`

if [[ "$1" == "--temp" ]]; then
    echo $weather | jq -r ".main.temp"
elif [[ "$1" == "--feels" ]]; then
    echo $weather | jq -r ".main.feels_like"
elif [[ "$1" == "--condition" ]]; then
    echo $weather | jq -r ".weather[].description"
elif [[ "$1" == "--locale" ]]; then
    echo $weather | jq -r ".name"
    echo $weather | jq -r ".sys.country"
elif [[ "$1" == "--icon" ]]; then
    echo $weather | jq -r ".weather[].icon" | head -1
else
    echo "bad syntax, needs --<command>"
fi
