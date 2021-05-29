#!/bin/bash

# wszystkie liczby od 5 do 15
# for n in {5..15} 

# co trzecia liczba od 5 do 15 (5, 8, 11, 14)

# for n in $(seq 5 3 15)

for n in `seq 5 3 15`
do
    echo "n = $n"
done
