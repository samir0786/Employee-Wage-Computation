#!/bin/bash -x

WAGE_PER_HOUR=20
DAY_PER_MONTH=20
TOTAL_WORKING_HOURS=100
countWorkingDay=0
getHours=0
dailyWage=0

function getWorkingHours() {
	case $(( RANDOM%2 )) in
		1)
			employeeHours=8
			;;
		0)
			employeeHours=4
			;;
	esac
	echo $employeeHours
}

while [[ $getHours -le $TOTAL_WORKING_HOURS && $countWorkingDay -ne $DAY_PER_MONTH ]]
do
	readNumber=$(( RANDOM%2 ))
	if [ $readNumber -eq 1 ]
	then
		countWorkingDay=$(( countWorkingDay+1 ))
		getHours=$(( getHours+"$( getWorkingHours )" ))
		dailyWage=$getHours
	else
		dailyWage=$(( dailyWage+0 ))
	fi
done
echo "Employee Wage : " $(( dailyWage*WAGE_PER_HOUR ))

