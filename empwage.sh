#!/bin/bash -x
isFullTime=1;
isPartTime=2;
maxHoursInMonth=10;
empRatePerHour=20;
numWorkingDays=20;
totalWorkHours=0;
totalWorkingDays=0;
count=0
function getWorkingHours() {
 case $1 in $isFullTime)
 workHours=8;; 
 $isPartTime)
 workHours=4;;
	*)
 workHours=0;;
  esac
  echo $workHours
}
function wage(){
 wage=$(( $1 * $empRatePerHour ))
 echo $wage
}
while [[ $totalWorkHours -lt $maxHoursInMonth && $totalWorkingDays -lt $numWorkingDays ]]
 do
   (( totalWorkingDays++ ))
   workHours="$( getWorkingHours $((RANDOM%3)) )"
   wagePerDay="$( wage $(($workHours)) )"
   Employee[((count++))]=$wagePerDay
   totalWorkHours=$(( $totalWorkHours + $workHours ))
 done
  totalWage=$(( $totalWorkHours * $empRatePerHour ))
  Employee[((count++))]=$totalWage
  echo ${Employee[@]}
 

