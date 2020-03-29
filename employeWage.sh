#!/bin/bash -x

WAGE_PER_HOURS=20
FULL_DAY_HOURS=8
readNumber=$(( RANDOM%2 ))
if [ $readNumber -eq 1 ]
then
	echo "Employee is Present"
	dailyWage=$((WAGE_PER_HOURS*FULL_DAY_HOURS))
else
	echo "Employee is Absent"
	dailyWage=0
fi
echo "Employee Wage: "$dailyWage
