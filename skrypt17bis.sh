#!/bin/bash

read -p "Podaj liczbe: " n

if test "$n" -gt 10
then
    echo "O jak dużo"
else
    echo "O jak mało"
fi

