#!/bin/bash

for liczba in 10 20 30 20 100 50 13 29
do
    [ "$liczba" -gt 25 ] && continue

    echo "Liczba: $liczba"
done

