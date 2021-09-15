#! /bin/bash -x

# explicit declaration of array
declare -a fruits
counter=0
fruits[((counter++))]="apple"
fruits[((counter++))]="banana"
fruits[((counter++))]="pears"
fruits[((counter++))]="kiwi"
echo counter:$counter

#print all elements index
echo index:${!fruits[*]}
#print all elements of array
echo values:${fruits[*]}
#print specific index
index=2
echo $index:${fruits[$index]}
#direct declartn
user[0]="normal"
user[1]="advanced"
#compound assignment
severs=("prod" "dev" "stage" "pre-prd" "beta")


