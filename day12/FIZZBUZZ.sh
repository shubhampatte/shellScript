#! /bin/bash -x

for((num=1;num<=100;num++))
do
	fizz=$(($num%3))
        buzz=$(($num%5))
        FIZZBUZZ=$(($num%15))

if [ $FIZZBUZZ -eq 0 ]
then
	echo "Fizzbuzz"
elif [ $fizz -eq 0 ]
then
	echo "Fizz"
elif [ $buzz -eq 0 ]
then
	echo "buzz"
else
	echo $num
fi
done


