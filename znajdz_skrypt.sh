#!/bin/bash

read -p "Podaj słowo kluczowe: " wzorzec

for skrypt in *.sh
do
    echo "Sprawdzam $skrypt..."
    if grep -q "$wzorzec" "$skrypt"
    then
        echo "Znalazłem! $skrypt"
        break
    fi

done
