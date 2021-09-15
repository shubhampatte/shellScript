#!/bin/bash -x

counter=0
num=3

read -p " Enter 3 inputs: " num1 num2 num3
array[((counter++))]=$num1
array[((counter++))]=$num2
array[((counter++))]=$num3

echo ${array[*]}

for (( i=0; i<$num-2; i++ ))
do
        for (( j=i+1; j<$num-1; j++ ))
        do
                for (( k=j+1; k<$num; k++ ))
                do
                        sum=$((${array[i]} + ${array[j]} + ${array[k]}))
                        if [ $sum -eq 0 ]
                        then
                                echo " Sum of three integer add to Zero : " ${array[i]}, ${array[j]}, ${array[k]}
                        fi
                done
        done
done
