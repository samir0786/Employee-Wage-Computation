#!/bin/bash -x

WAGE_PER_HOURS=20
FULL_DAY_HOURS=8
PART_TIME_HOURS=4
readNumber=$(( RANDOM%2 ))
if [ $readNumber -eq 1 ]
then
	echo "Employee is Present"
	case $(( RANDOM%2 )) in
		1)
			dailyWage=$(( WAGE_PER_HOURS*FULL_DAY_HOURS ))
			;;
		0)
			dailyWage=$(( WAGE_PER_HOURS*PART_TIME_HOURS ))
			;;
	esac

else
		echo "Employee is Absent"
		dailyWage=0
fi
echo "Employee Wage: "$dailyWage

