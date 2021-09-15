#! /bin/bash -x

#constant variable
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORK_HR=50
totalWorkHr=0
day=0
declare -a dailyWage
function getWorkHr(){
        local empCheck=$1
        local empHr=0
        case $empCheck in
                $IS_PRESENT_FULL_TIME)
                        empHr=8;;
                $IS_PRESENT_PART_TIME)
                        empHr=4;;
        *)
                        empHr=0;;
        esac
        echo $empHr
}
while [ $day -lt $MAX_WORKING_DAYS -a $totalWorkHr -lt $MAX_WORK_HR ]
do

        #variable
        empCheck=$((RANDOM%3)) # 1,2,0
        empHr=$( getWorkHr $empCheck )
        #((day++))
        totalWorkHr=$(( totalWorkHr + empHr ))
        dailyWage[((day++))]=$(( empHr * EMP_RATE_PER_HR ))

done

totalSalary=$(( totalWorkHr * EMP_RATE_PER_HR ))
echo dailyWage:${dailyWage[*]}

