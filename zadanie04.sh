#!/bin/bash

biez=2021

read -p "Podaj rok urodzenia: " ur

wiek=$((biez - ur))

echo "Rok urodzenia: $ur"
echo "Wiek: $((biez - ur))"
echo "Wiek: $wiek"

