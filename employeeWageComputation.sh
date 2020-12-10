#!/bin/bash -x


isFullTime=1
isPartTime=2
salary=0
ratePerHr=20
numofWorkingDays=20;


for (( day=1;day<=$numofWorkingDays;day++ ))
do
        empCheck=$((RANDOM%3))
        case $empCheck in
                $isFullTime)
                echo "FullTime Employee"
                empHrs=8
                ;;
                $isPartTime)
                echo "PartTime Employee"
	empHrs=4
                ;;
                *)
                echo "Employee is Absent"
                empHrs=0
                ;;
        esac

        salary=$(( $ratePerHr*$empHrs ))
        echo "Per Day Salary:" $salary
        totalSalary=$(($totalsalary+$salary ))
done
echo "Employee wage per month:" $totalSalary

