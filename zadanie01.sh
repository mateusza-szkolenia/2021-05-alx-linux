#!/bin/bash

echo "Godzina: $(date +%T)"

echo "Liczba plików w etc: $(ls /etc/ | wc -l)"
