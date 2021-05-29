#!/bin/bash

szuk='bash'
# szuk='xxxxxxx'

plik='/etc/shadow'
# plik='/etc/passwd'
# plik='/etc/niematakiego'

grep -q "$szuk" "$plik" 2> /dev/null

wynik="$?"

if [ "$wynik" -eq 0 ]
then
    echo "Znaleziono słowo: $szuk w pliku $plik"
elif [ "$wynik" -eq 1 ]
then
    echo "Nie znaleziono słowa: $szuk w plik $plik"
elif [ "$wynik" -eq 2 ]
then
    echo "Nie znaleziono pliku lub brak praw do pliku: $plik"
else
    echo "Nieznany błąd: $wynik"
fi

