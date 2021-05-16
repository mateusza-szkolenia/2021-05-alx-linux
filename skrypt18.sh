#!/bin/bash

szuk='bash'
# szuk='xxxxxxx'

plik='/etc/shadow'
# plik='/etc/passwd'
# plik='/etc/niematakiego'

grep -q "$szuk" "$plik" 2> /dev/null

wynik="$?"

if [ "$wynik" = 0 ]
then
    echo "Znaleziono słowo: $szuk w pliku $plik"
elif [ "$wynik" = 1 ]
then
    echo "Nie znaleziono słowa: $szuk w plik $plik"
elif [ "$wynik" = 2 ]
then
    echo "Nie znaleziono lub brak praw do pliku: $plik"
else
    echo "Nieznany błąd: $wynik"
fi

