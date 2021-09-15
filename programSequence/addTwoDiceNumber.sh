#!/bin/bash -x

Digit1=$(((RANDOM%6)+1))
Digit2=$(((RANDOM%6)+1))

echo Result : $(($Digit1+$Digit2))

