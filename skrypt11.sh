#!/bin/bash

echo "Początek skryptu"

read -p "Podaj slowo: " slowo

if grep -q "$slowo" /etc/passwd; then
    echo "Znaleziono słowo $slowo w pliku /etc/passwd"
    echo "hurra!"
else
    echo "Chyba jednak nie ma tego słowa..."
fi

echo "Koniec skryptu"


