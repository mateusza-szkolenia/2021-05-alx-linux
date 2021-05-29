#!/bin/bash

read -p "Podaj nazwę pliku: " nazwa

for algo in md5sum sha1sum sha256sum sha512sum
do
    "$algo" "$nazwa"
done

