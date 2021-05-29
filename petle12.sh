#!/bin/bash

# Napisać skrypt, który w pętli czeka na skasowanie przez użytkownika wskazanego pliku.

while [ -e "stop.txt" ]
do
    echo "Wciąż czekam... $(date)"
    sleep 1
done

echo "Mogę zaczynać!"

# tutaj jakiś program
