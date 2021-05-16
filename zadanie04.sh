#!/bin/bash

biez=$(date +%Y)

read -p "Podaj rok urodzenia: " ur

wiek=$((biez - ur))

echo "Rok urodzenia: $ur"
echo "Wiek: $((biez - ur))"
echo "Wiek: $wiek"

