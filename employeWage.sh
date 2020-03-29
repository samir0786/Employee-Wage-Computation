#!/bin/bash -x

readNumber=$(( RANDOM%2 ))
if [ $readNumber -eq 1 ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
