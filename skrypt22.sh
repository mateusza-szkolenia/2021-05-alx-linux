#!/bin/bash

read -p "Podaj liczbę: " n

if [ "$n" -eq 0 ]
then
    echo "Zero"
fi


# Krótszy zapis prostego ifa

[ "$n" -eq 0 ] && echo "Zero"

echo "Koniec"
