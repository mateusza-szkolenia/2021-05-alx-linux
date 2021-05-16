#!/bin/bash

read -p "Podaj liczbę z przedziału 10..20 (włącznie):" n

# operator &&
# logiczne ORAZ (AND)


if [ "$n" -ge 10 ] && [ "$n" -le 20 ]
then
    echo "Liczba $n jest OK"
else
    echo "Liczba spoza zakresu"
fi
    
