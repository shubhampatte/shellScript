#!/bin/bash -x
num1=$((RANDOM%999))
num2=$((RANDOM%999))
num3=$((RANDOM%999))
num4=$((RANDOM%999))
num5=$((RANDOM%999))

if [ $num1 -gt $num2 -a $num1 -gt $num3 -a $num1 -gt $num4 -a $num1 -gt $num5 ]
then
	echo "Maximum =:" $num1
elif [ $num2 -gt $num3 -a $num2 -gt $num4 -a $num2 -gt $num5 ]
then

	echo "Maximum =:" $num2
elif [ $num3 -gt $num4 -a $num3 -gt $num5 ]
then
	echo "Maximum =:" $num3
elif [ $num4 -gt $num5 ]
then
	echo "Maximum =:" $num4
else
	echo "MAximum =:" $num5
fi


if [ $num1 -lt $num2 -a $num1 -lt $num3 -a $num1 -lt $num4 -a $num1 -lt $num5 ]
then
	echo "Minimum =:" $num1
elif [ $num2 -lt $num3 -a $num2 -lt $num4 -a $num2 -lt $num5 ]
then
	echo "Minimum =:" $num2
elif [ $num3 -lt $num4 -a $num3 -lt $num5 ]
then
	echo "Minimum =:" $num3
elif [ $num4 -lt $num5 ]
then
	echo "Minimum =:" $num4
else
	echo "Minimum =:" $num5
fi
