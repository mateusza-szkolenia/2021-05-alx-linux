#!/bin/bash

read -p "Podaj nazwę pliku: " nazwa

for algo in md5 sha1 sha256 sha512
do
   h=$("${algo}sum" "$nazwa")
   echo "$algo: ${h:0:8}..." 
done

