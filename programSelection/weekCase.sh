#!/bin/bash -x
read -p "Enter the Number :" num
case $num in
	1)
	echo "Monday"
	;;
	2)
	echo "Tuesday"
	;;
	3)
	echo "Wenesday"
	;;
	4)
	echo "Thrusday"
	;;
	5)
	echo "Friday"
	;;
	6)
	echo "Saturday"
	;;
	7)
	echo "Sunday"
	;;
	*)
	echo "Invaild input"
	;;
esac
