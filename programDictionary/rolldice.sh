#! /bin/bash -x

declare -A rollDie

rollDie["1"]=0
rollDie["2"]=0
rollDie["3"]=0
rollDie["4"]=0
rollDie["5"]=0
rollDie["6"]=0

count=1

while [ $count -gt 0 ]
do
	roll=$(((RANDOM%6)+1))
	((rollDie[$roll]++))

	echo "dice count :" ${rollDie[$roll]}

	if [ ${rollDie[$roll]} -eq 10 ]
	then
		max=$roll
		echo "dice roll maximum times :" $max
		break
	fi

	count=$(($count+1))
done

echo dice: ${rollDie[*]}
echo dice: ${!rollDie[*]}

min=1
a=${rollDie[$max]}

for key in ${!rollDie[@]}
do
	if [ ${rollDie[$key]} -lt $a ]
	then
		min=$key
		a=${rollDie[$key]}
	fi
done

echo "The dice number $max reaches ${rollDie[$max]} times"
echo "The dice number $min reaches ${rollDie[$min]} times"
