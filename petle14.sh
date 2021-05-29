#!/bin/bash

# pętla nieskończona z kilkoma warunkami wyjścia

# usuń plik jeśli istnieje
[ -e "stop.txt" ] && rm "stop.txt"

while true
do
    losowa=$RANDOM
    echo "$(date +%T) Czekam... ($losowa)"

    [ "$(date +%H:%M)" == "15:00" ] && break
    [ -e "stop.txt" ] && break
    [ "$losowa" -lt 2003 ] && break

    sleep 1

done
