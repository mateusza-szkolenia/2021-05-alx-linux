#!/bin/bash

program="htop"

if type -p "$program" > /dev/null
then
    echo "Program $program jest zainstalowany"
else
    echo "Brak $program"
fi
