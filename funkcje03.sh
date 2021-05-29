#!/bin/bash

function opisz_plik(){
    local rozmiar
    local suma_md5 suma_sha1

    local plik="$1"

    echo "Plik: $plik"
    rozmiar=$(wc -c < "$plik")
    suma_md5=$(md5sum < "$plik" | grep -o '^........')
    suma_md5=$(md5sum < "$plik" | grep -o '^.\{32\}')
    suma_md5=$(md5sum < "$plik" | grep -o '^[0-9a-f]*')
    suma_sha1=$(sha1sum < "$plik")
    echo "Rozmiar: $rozmiar"
    echo "MD5:     $suma_md5"
    #echo "SHA1:    ${suma_sha1% *}"
    echo "SHA1:    ${suma_sha1:0:40}"
}

rozmiar=10000

opisz_plik /etc/passwd
opisz_plik /etc/motd
opisz_plik /etc/hosts

echo "!!!! rozmiar: $rozmiar"
echo "plik: $plik (powinien być pusty)"
