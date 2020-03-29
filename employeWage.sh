#!/bin/bash -x

WAGE_PER_HOURS=20
FULL_DAY_HOURS=8
PART_TIME_HOURS=4
readNumber=$(( RANDOM%3 ))
if [ $readNumber -eq 1 ]
then
		echo "Employee is Present"
		dailyWage=$((WAGE_PER_HOURS*FULL_DAY_HOURS))
else
		if [ $readNumber -eq 2 ]
		then
			dailyWage=$((WAGE_PER_HOURS*PART_TIME_HOURS))
		else
			echo "Employee is Absent"
			dailyWage=0
		fi
fi
echo "Employee Wage: "$dailyWage

