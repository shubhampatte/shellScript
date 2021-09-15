#!/bin/bash -x

digit1=$((RANDOM%99))

digit2=$((RANDOM%99))

digit3=$((RANDOM%99))

digit4=$((RANDOM%89))

digit5=$((RANDOM%99))

sum=$(($digit1+$digit2+$digit3+$digit4+$digit5))

avg=$( echo $sum | awk '{print $sum/5}') 

