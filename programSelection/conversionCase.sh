#!/bin/bash -x
read -p &quot;1. Feet to Inch 2. Feet to Meter 3. Inch to Feet 4. Meter to Feet : &quot; choice
case $choice in
	1)
	read -p "Enter the feet value :" feet
	inch=$(($feet*12))
	echo "$inch in"
	;;
	2)
	read -p "Enter the feet value :" feet
	meter=$((meter*381/1250)
	echo "$meter mts"
	;;
	3)
	read -p "Enter the inch value:" inch
	feet=$(($inch/12))
	echo "$feet fts"
	;;
	4)
	read -p "Enter the  meter value :" meter
	feet=$(($meter*82021/25000))
	echo "$feet fts"
	;;
	*)
	echo "Invalid input"
	;;
esac
