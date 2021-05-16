#!/bin/bash

read -p 'Podaj imie: ' imie

if test "$imie" == "Mateusz"
then
    echo "Witaj nauczycielu"
elif test "$imie" == ""
then
    echo "Witaj nieznajomy"
else
    echo "Witaj $imie"
fi

