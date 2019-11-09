#!/bin/bash -x
isFullTime=1;
isPartTime=2;
empRatePerHour=10;

for (( day=1; day<=20; day++ ))
 do
 checkEmp=$(( RANDOM%3 ));
 case  $checkEmp in 
 $isFullTime) 
    echo "employe is present";
    empHour=8;;
 $isPartTime) 
    echo " part time employee present";
    empHour=2;;
 *)  
    echo "employee is not present";
    empHour=0;;
esac
salary=$(( $empRatePerHour*$empHour ))
sum=$(( $sum + $salary ))
echo -n "$day";
done
echo $sum;  
printf "\n";

