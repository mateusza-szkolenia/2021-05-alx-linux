#!/bin/bash

echo "Początek skryptu"

slowo="baah"

if grep -q "$slowo" /etc/passwd; then
    echo "Znaleziono słowo $slowo w pliku /etc/passwd"
    echo "hurra!"
    date
    echo "koniec"
fi

echo "Koniec skryptu"


