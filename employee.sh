#!/bin/bash -x
isFullTime=1;
isPartTime=2;
checkRandom=$(( RANDOM%3 ));
empRatePerHour=10;
if [ $isFullTime -eq $checkRandom ]
 then
   {
	echo "employe is present";
	empHour=8;
   }
elif [ $isPartTime -eq $checkRandom ]
 then
   {
	echo "part time employee present";
	empHour=3;
	
   } 
else
  {
       echo "employee is not present";
       empHour=0;
  }
fi
wage=$(( $empRatePerHour*$empHour ));
echo $wage; 
