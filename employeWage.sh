#!/bin/bash -x

WAGE_PER_HOUR=20
FULL_TIME_HOUR=8
PART_TIME_HOUR=4
DAY_PER_MONTH=20
TOTAL_WORKING_HOURS=100
dailyWage=0
countWorkingDay=0
countTotalHours=0
while [[ $countTotalHours -le $TOTAL_WORKING_HOURS && $countWorkingDay -ne $DAY_PER_MONTH ]]
do
	readNumber=$(( RANDOM%2 ))
	if [ $readNumber -eq 1 ]
	then
		countWorkingDay=$(( countWorkingDay+1 ))
		case $(( RANDOM%2 )) in
			1)
				dailyWage=$(( dailyWage+(FULL_TIME_HOUR*WAGE_PER_HOUR) ))
				countTotalHours=$(( countTotalHours+FULL_TIME_HOUR ))
				;;
			0)
				dailyWage=$(( dailyWage+(PART_TIME_HOUR*WAGE_PER_HOUR) ))
				countTotalHours=$(( countTotalHours+PART_TIME_HOUR ))
				;;
		esac
	else
		dailyWage=$(( dailyWage+0 ))
	fi
done
echo "Employee Wage : " $dailyWage

