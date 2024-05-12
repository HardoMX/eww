#!/bin/bash

KEY=`sed '1!d' ./secrets.txt`
ID=`sed '2!d' ./secrets.txt`
UNIT="metric"

WEATHER=`curl -sf "https://api.openweathermap.org/data/2.5/weather?appid="$KEY"&q="$ID"&units="$UNIT`

if [[ "$1" == "--temp" ]]; then
    echo $WEATHER | jq -r ".main.temp"
elif [[ "$1" == "--feels" ]]; then
    echo $WEATHER | jq -r ".main.feels_like"
elif [[ "$1" == "--cond" ]]; then
    echo $WEATHER | jq -r ".weather[].main"
elif [[ "$1" == "--cond-full" ]]; then
    echo $WEATHER | jq -r ".weather[].description"
elif [[ "$1" = "--pressure" ]]; then
    echo $WEATHER | jq -r ".main.pressure"
elif [[ "$1" == "--humidity" ]]; then
    echo $WEATHER | jq -r ".main.humidity"
elif [[ "$1" == "--wind" ]]; then
    echo $WEATHER | jq -r ".wind.speed"
elif [[ "$1" == "--deg" ]]; then
    echo $WEATHER | jq -r ".wind.deg"
elif [[ "$1" == "--gust" ]]; then
    echo $WEATHER | jq -r ".wind.gust"
elif [[ "$1" == "--locale" ]]; then
    echo $WEATHER | jq -r ".name"
    echo $WEATHER | jq -r ".sys.country"
elif [[ "$1" == "--icon" ]]; then
    echo $WEATHER | jq -r ".weather[].icon" | head -1
else
    echo "Bad syntax"
fi
