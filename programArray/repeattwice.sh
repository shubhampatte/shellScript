#! /bin/bash -x

read -p " Enter the starting value : " start
read -p " Enter the ending value : " end
count=0

for num in `seq $start $end`
do
        arr[$count]=$num
        count=$(($count+1))
done

echo ${arr[*]}

for (( i=0; i<$end; i++ ))
do
        temp=$((${arr[i]}%11))

        if [ $temp -eq 0 ]
        then
                echo "${arr[i]} is repeated "
                array[i]=${arr[i]}
		continue
        fi
done
echo " digits repeated twice are : " ${array[*]}
