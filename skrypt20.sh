#!/bin/bash

read -p "Podaj liczbę spoza przedziału 10..20 (włącznie):" n

# operator ||
# logiczne LUB (OR)


if [ "$n" -lt 10 ] || [ "$n" -gt 20 ]
then
    echo "Liczba $n jest OK"
else
    echo "Liczba $n jest nie ok"
fi
    
