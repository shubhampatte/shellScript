#! /bin/bash -x

n=$1
	echo "Power of 2 is $n �
for (( i=0;i<=n;i++ ))
do
	echo $((2**i))
done

