#!/bin/bash

for liczba in 10 20 30 20 100 50 13 29
do
    if [ "$liczba" -gt 25 ]
    then
        continue
    fi

    echo "Liczba: $liczba"
done

