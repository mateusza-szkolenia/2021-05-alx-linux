#!/bin/bash

konto="mateusz"

if ! id "$konto" > /dev/null 2>&1
then
    echo "Brak konta $konto"
    echo "Zakładam je"
    # adduser "$konto"
fi

