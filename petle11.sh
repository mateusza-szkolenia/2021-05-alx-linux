#!/bin/bash

echo "Pętla czeka na pojawienie się pliku raport.txt"

while ! [ -e "raport.txt" ]
do
    echo "$(date +%F-%T): Brak raportu..."
    sleep 1
done

echo "Jest!"

md5sum raport.txt
