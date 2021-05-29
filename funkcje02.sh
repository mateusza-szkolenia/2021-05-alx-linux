#!/bin/bash

function opisz_plik(){
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

plik="/etc/passwd"
opisz_plik


plik="/etc/motd"
opisz_plik

