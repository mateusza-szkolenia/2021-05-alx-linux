#!/bin/bash

echo "Wszystkie pliki markdown:"

for plik in *.md
do
    [ -e "$plik" ] || continue
    echo "MD: $plik $(wc -c < "$plik")"
done

echo "Wszystkie pliki JPEG:"

for plik in *.jpg
do
    [ -e "$plik" ] || continue
    echo "JPG: $plik $(wc -c < "$plik")"
done

echo "Wszystkie foldery:"

for plik in *
do
    [ -d "$plik" ] || continue
    echo "Katalog: $plik"
done

