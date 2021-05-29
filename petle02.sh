#!/bin/bash

for plik in funkcje*.sh
do
    echo "Nauka funkcji: $plik"
done

for plik in skrypt* zadanie*
do
    echo "Skrypt lub zadanie: $plik"
done

for logfile in /var/log/*
do
    echo "Logi: $logfile"
done
