#!/bin/bash

read -p 'Podaj imie: ' imie

if [ "$imie" == "Mateusz" ]
then
    echo "Witaj nauczycielu"
elif [ "$imie" == "" ]
then
    echo "Witaj nieznajomy"
else
    echo "Witaj $imie"
fi

