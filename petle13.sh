#!/bin/bash

until [ -e "raport.txt" ]
do
    echo "Czekam na raport..."
    sleep 1
done

echo "Jest raport!"
