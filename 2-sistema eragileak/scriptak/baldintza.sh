#!/bin/bash

ADINA=18

if [ $ADINA -ge 80 ]; then
    echo "Aitite bat zera."
elif [$ADINA -ge 18]; then
    echo "Adin nagusia zara."
else
    echo "Adin txikia zara."
fi