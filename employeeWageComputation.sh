#!/bin/bash -x
echo "Welcome to EmployeeWage Computation"
randomCheck=$((RANDOM%2))
isPresent=1
if [ $isPresent -eq $randomCheck ]
then
	ratePerHr=20
        numOfworkingHrs=8
        salary=$(( $ratePerHr*$numOfworkingHrs ))
else
        salary=0
fi
