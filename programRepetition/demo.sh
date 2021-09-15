#! /bin/bash -x

n=$1
	echo "Power of 2 is $n"
for (( i=0;i<=n;i++ ))
do
	echo $((2**i))
done

==================================================

#!/bin/bash -x
n=$1
	echo "Harmonic number $n"
for (( i=1;i<=n;i++ ))
do
series=1/$i
echo $harmonicseries
done
===============================================
#!/bin/bash -x
read -p "Enter number :" num
for (( i=2;i<=$num/2;i++ ))
do
a=$(($num%$i))
if [ $a -eq 0 ]
then
echo " $num is not a Prime Number"
exit
fi
done
echo  "$num is a Prime Number"
=========================================
#!/bin/bash -x

echo " Enter the Range num1 and num2"
read num1 num2

for (( i=$num1; i<=$num2; i++ ))
do
        f=0

        for (( j=2; j<=$i/2; j++ ))
        do
                a=$(($i%$j))

                if [ $a -eq 0 ]
                then
                        f=1
                        break
                fi
        done

                if [ $f -eq 0 ]
                then
                        echo $i
                fi

done
===========================================================
#!/bin/bash -x

read -p " Enter the number : " num

fact=1

for (( i=1; i<=num; i++ ))
do
        fact=$(($fact*$i))
done

echo $fact
==============================================
#!/bin/bash -x

n=$1

echo " Power of 2 is $n "

i=0

while [ $i -le $n ]
do
        power=$((2**i))
        echo $power

        if [ $power -eq 256 ]
        then
                exit
        fi

        ((i++))

done
===========================================
#! /bin/bash -x

head=0
tail=0

while [ $head -le 11 ] && [ $tail -le 11 ]
do
        toss=$((RANDOM%2))

        if [ $toss -eq 1 ]
        then
                head=$((head+1))
        else
                tail=$((tail+1))
        fi
done

echo "No of heads : " $head
echo " No of tails : " $tail
================================================

#! /bin/bash -x

amount=100
won=0
loss=0
times=0

while [ $amount -ne 200 ]&& [ $amount -ne 0 ]
do
        bet=$((RANDOM%2))
	times=$((times+1))

        if [ $bet -eq 1 ]
        then
                amount=$(($amount+1))
                won=$((won+1))
        else
                amount=$(($amount-1))
                loss=$((won+1))
        fi
done

echo " times : " $betTimes
echo " won : " $won
echo " loss : " $loss
echo " amount : " $amount
====================================================
#!/bin/bash -x


function palindrome()
{
        reverse=0
num=$1

        while [ $n -gt 0 ]
        do
                digit=$(($n%10))
                reverse=$(($reverse*10+$digit))
		n=$(($n/10))
        done

        echo $reverse
}

echo " Enter the two number : "
read n1
read n2

resultn1="$( palindrome $n1 )"
resultn2="$( palindrome $n2 )"

if [ $resultn1 -eq $resultn2 ]
the
        echo " $num1 $num2 is Palindrome "
else
        echo " $num1 $num2 is not Palindrome "
fi
====================================================
#!/bin/bash -x

function prime()
{
n=$1
        for (( i=2; i<=$n/2; i++ ))
        do
                r=$(($n%$i))

                if [ $r -eq 0 ]
                then
                        echo " $n is not a Prime Number "
                        exit
                fi
        done

        echo " $n is a Prime Number "
}

function palindrome()
{
        reverse=0
n=$1

        while [ $n -gt 0 ]
        do
                digit=$(($n%10))
                reverse=$(($reverse*10+$digit))
		n=$(($n/10))
        done

        echo $reverse
}

read -p "Enter the number to Check Prime Number : " n1
echo $n1 : "$( prime $n1 )"

read -p "Enter the number to check Palindrome Number : " n2
result="$( palindrome $n2 )"

if [ $result -eq $n2 ]
then
        echo " $n2 is Palindrome "
        echo $n2 : "$( prime $n2 )"
else
        echo " $n2 is not Palindrome "
fi




























