#!/bin/bash -x
isFullTime=1;
isPartTime=2;
checkRandom=$(( RANDOM%3 ));
if [ $isFullTime -eq $checkRandom ]
 then
   {
        echo "employe is present";
   }
elif [ $isPartTime -eq $checkRandom ]
 then
   {
        echo "part time employee present";

   } 
else
  {
       echo "employee is not present";
  }
fi
