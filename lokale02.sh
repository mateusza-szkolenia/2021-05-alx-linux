#!/bin/bash

echo "Sposób wyświetlania ułamków jest zależny od lokali"

for l in C en_US.UTF8 pl_PL.UTF8 fr_FR.UTF8 ru_RU.UTF8 he_IL.UTF8
do
    LANG=$l
    echo "LANG $LANG"
    date
    w | grep "load"
    echo "============="
done

