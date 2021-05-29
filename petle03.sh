#!/bin/bash

for rok in {2016..2021}
do
    for kwartal in 1 2 3 4
    do
        for t in przychody koszty
        do
            echo "Raport-$rok-q$kwartal-$t.txt"

        done
    done
done
