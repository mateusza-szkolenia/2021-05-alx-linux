#!/bin/bash

katalog="raporty"

if mkdir "$katalog"
then
    echo "Utworzyłem katalog: $katalog"
else
    echo "Nie udało się utworzyć katalogu: $katalog"
fi

