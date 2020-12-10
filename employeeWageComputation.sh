#!/bin/bash -x
echo "Welcome to EmployeeWage Computation"
randomCheck=$((RANDOM%3))
isFullTime=1
isPartTime=1
salary=0
ratePerHr=20
if [ $isFullTime -eq $randomCheck ]
then
        numOfworkingHrs=8
elif [ $isPartTime -eq $randomCheck ]
then
        numOfworkingHrs=4
else
        numOfworkingHrs=0
fi

salary=$(( $ratePerHr*$numOfworkingHrs ))
echo "Employee wage:" $salary

