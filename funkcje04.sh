#!/bin/bash

function powitanie(){

    imie="$1"

    if [ "$imie" == "Mateusz" ]; then
        echo "Witaj, nauczycielu"
        return
    else
        echo "Witaj, $imie"
    fi

    echo "Do roboty!"
}


powitanie Mateusz
powitanie Marcin
powitanie Mariusz

exit

echo "Dzisiaj kurs odwołany"


# return - przerywa funkcję
# exit - przerywa skrypt
