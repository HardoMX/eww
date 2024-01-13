#!/bin/bash

weather=`./weather.sh --icon`

day="#A3BE8C"
night="#B48EAD"

if [ "$weather" == "50d" ]; then
    icon=" "
    quote="Forecast says it's misty \nMake sure you don't get lost on your way..."
    hex=$day
elif [ "$weather" == "50n" ]; then
    icon=" "
    quote="Forecast says it's a misty night \nDon't go anywhere tonight or you might get lost..."
    hex=$night
elif [ "$weather" == "01d" ]; then
    icon=" "
    quote="It's a sunny day, gonna be fun! \nDon't go wandering all by yourself though..."
    hex=$day
elif [ "$weather" == "01n" ]; then
    icon=" "
    quote="It's a clear night \nYou might want to take a evening stroll to relax..."
    hex=$night
elif [ "$weather" == "02d" ]; then
    icon=" "
    quote="It's  cloudy, sort of gloomy \nYou'd better get a book to read..."
    hex=$day
elif [ "$weather" == "02n" ]; then
    icon=" "
    quote="It's a cloudy night \nHow about some hot chocolate and a warm bed?"
    hex=$night
elif [ "$weather" == "03d" ]; then
    icon=" "
    quote="It's  cloudy, sort of gloomy \nYou'd better get a book to read..."
    hex=$day
elif [ "$weather" == "03n" ]; then
    icon=" "
    quote="It's a cloudy night \nHow about some hot chocolate and a warm bed?"
    hex=$night
elif [ "$weather" == "04d" ]; then
    icon=" "
    quote="It's  cloudy, sort of gloomy \nYou'd better get a book to read..."
    hex=$day
elif [ "$weather" == "04n" ]; then
    icon=" "
    quote="It's a cloudy night \nHow about some hot chocolate and a warm bed?"
    hex=$night
elif [ "$weather" == "09d" ]; then
    icon=" "
    quote="It's rainy, it's a great day! \nGet some ramen and watch as the rain falls..."
    hex=$day
elif [ "$weather" == "09n" ]; then
    icon=" "
    quote="It's gonna rain tonight it seems \nMake sure your clothes aren't still outside..."
    hex=$night
elif [ "$weather" == "10d" ]; then
    icon=" "
    quote="It's rainy, it's a great day! \nGet some ramen and watch as the rain falls..."
    hex=$day
elif [ "$weather" == "10n" ]; then
    icon=""
    quote="It's gonna rain tonight it seems \nMake sure your clothes aren't still outside..."
    hex=$night
elif [ "$weather" == "11d" ]; then
    icon=" "
    quote="There's storm for forecast today \nMake sure you don't get blown away..."
    hex=$day
elif [ "$weather" == "11n" ]; then
    icon=" "
    quote="There's gonna be storms tonight \nMake sure you're warm in bed and the windows are shut..."
    hex=$night
elif [ "$weather" == "13d" ]; then
    icon=" "
    quote="It's gonna snow today \nYou'd better wear thick clothes and make a snowman as well!"
    hex=$day
elif [ "$weather" == "13n" ]; then
    icon=" "
    quote="It's gonna snow tonight \nMake sure you get up early tomorrow to see the sights..."
    hex=$night
elif [ "$weather" == "40d" ]; then
    icon=" "
    quote="Forecast says it's misty \nMake sure you don't get lost on your way..."
    hex=$day
elif [ "$weather" == "40n" ]; then
    icon=" "
    quote="Forecast says it's a misty night \nDon't go anywhere tonight or you might get lost..."
    hex=$night
else
    icon=" "
    quote="Sort of odd, there is no forecast \nMake sure you have a good time!"
    hex="#FF0000"
fi

if [[ "$1" == "--icon" ]]; then
    echo $icon
elif [[ "$1" == "--quote" ]]; then
    echo -e $quote | head -n1
elif [[ "$1" == "--quote2" ]]; then
    echo -e $quote | tail -n1
elif [[ "$1" == "--hex" ]]; then
    echo $hex
else
    echo "something went wrong :("
fi
