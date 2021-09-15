#!/bin/bash -x
read -p "Enter a number:" num
if [ $num -eq 1 ]
then
	echo "Unit"
elif [ $num -eq 10 ]
then
	echo "TEN"
elif [ $num -eq 100 ]
then
	echo "HUNDRED"
elif [ $num -eq 1000 ]
then
	echo "Thousand"
elif [ $num -eq 10000 ]
then
	echo "Ten Thousand"
else
	echo "Invaild"
fi
