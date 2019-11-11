#!/bin/bash -x
isFullTime=1;
isPartTime=2;
sum=0;
function myfunc() {
 echo $1
}
checkRandom=$(( RANDOM%3 ));
result="$( myfunc $checkRandom )"  
if [ $isFullTime -eq $result ]
 then
   {
	echo "employe is present";
	empHour=8;
   }
elif [ $isPartTime -eq $result ]
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
sum=$(( $sum+$empHour ))
fi
echo $sum; 
