#!/bin/bash -x

toss=$((RANDOM%2))

if [ $toss -eq 1 ]
then
	echo "Its a HEADS"
else
	echo "Its a TAILS"

fi
