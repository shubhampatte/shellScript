#!/bin/bash -x

function primeNum()
{
num=$1
        for (( i=2; i<=$num/2; i++ ))
        do
                res=$(($num%$i))

                if [ $res -eq 0 ]
                then
                        exit
                fi
        done

        echo $num 
}

function even()
{
	num=$1
	rem=$(($num%2))
	if [ $rem -eq 0 ]
	then
		echo $num
	fi
}

function odd()
{
        num=$1
        rem=$(($num%2))
        if [ $rem -eq 1 ]
        then
                echo $num
        fi
}

echo " Enter the range value a and b " 
read a
read b

counter=0

for ((i=$a;i<$b;i++))
do
	primeArray[((counter++))]=$( primeNum $i )
	evenArray[((counter++))]=$( even $i )
	oddArray[((counter++))]=$( odd $i )
done

echo " Prime Numbers : " ${primeArray[*]}
echo " Even Number : " ${evenArray[*]}
echo " Odd Number : " ${oddArray[*]}


