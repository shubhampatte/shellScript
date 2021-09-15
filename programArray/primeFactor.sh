#!/bin/bash -x

read -p " Enter the number : " num

flag=1
count=0

for (( i=2; i<=$num; i++ ))
do
        fact=$(($num%$i))

        if [ $fact -eq 0 ]
        then

                for (( j=2; j<=i/2; j++ ))
                do
                        check=$(($i%$j))

                        if [ $check -eq 0 ]
                        then
				flag=0
                                break
                        else
				flag=1
                        fi
                done

                if [ $flag -eq 1 ]
                then
                        arr[((count++))]=$i
                fi

        fi

done

echo " Prime Factorization of $num is : " ${arr[*]}

