#!/bin/bash -x
read -p "Enter the num a :" a
read -p "Enter the num b :" b
read -p "Enter the num c :" c
num1=$(($a+$b*$c))
num2=$(($a%$b+$c))
num3=$(($c+$a/$b))
num4=$(($a*$b+$c))

if [ $num1 -gt $num2 -a $num1 -gt $num3 -a $num1 -gt $num4 ]
then
	echo "maximum =:" $num1

elif [ $num2 -gt $num3 -a $num2 -gt $num4 ]
then
	echo "maximum =:" $num2
elif [ $num3 -gt $num4]
then
	echo "maximum =:" $num3
else
	echo "maximum =:" $num4
fi

if [ $num1 -lt $num2 -a $num1 -lt $num3 -a $num1 -lt $num4 ]
then
	echo "minimum =:" $num1
elif [ $num2 -lt $num3 -a $num2 -lt $num4 ]
then
	echo "minimum =:" $num2
elif [ $num3 -lt $num4 ]
then
	echo "minimum =:" $num3
else
	echo "minimum =:" $num4
fi
