#!/bin/bash

if id root
then
    echo "To Posix"
elif id Administrator
then
    echo "To jednak Windows"
else
    echo "Dziwna sytuacja..."
fi

