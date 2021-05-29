#!/bin/bash

for imie in Ala Ola Ela Iza Ewa Kasia Monika
do
    [ "$imie" == "Ela" ] && continue

    echo "Moja koleżanka: $imie"

    [ "$imie" == "Ewa" ] && break

done

echo "Koniec"
