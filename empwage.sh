#!/bin/bash -x
isFullTime=1;
isPartTime=2;
maxHoursInMonth=10;
empRatePerHour=20;
numWorkingDays=20;
totalWorkHours=0;
count=0
WorkingDays=0
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
declare -A empDict
empDict[totalWorkingDays]=$wage
while [[ $totalWorkHours -lt $maxHoursInMonth && $totalWorkingDays -lt $numWorkingDays ]]
 do
 
   workHours="$( getWorkingHours $((RANDOM%3)) )"
   wagePerDay="$( wage $(($workHours)) )"
   (( WorkingDays++ ))
   empDict["$WorkingDays"]=$wagePerDay
   echo "salary daywise " ${empDict[WorkingDays]}

   totalWorkHours=$(( $totalWorkHours + $workHours ))
 done
  totalWage=$(( $totalWorkHours * $empRatePerHour ))
  empDict[totalWorkingDays]=$totalWage

  
  echo "total salary " ${empDict[totalWorkingDays]}
  echo "whole salary data " ${empDict[@]}
 

