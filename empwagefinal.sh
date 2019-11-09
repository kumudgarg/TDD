#!/bin/bash -x
isFullTime=1;
isPartTime=2;
employee2=$(( RANDOM%3 ));
if [ $isFullTime -eq $employee2 ]
 then
   {
        echo "employe is present";
   }
elif [ $isPartTime -eq $employee2 ]
 then
   {
        echo "part time employee present";

   } 
else
  {
       echo "employee is not present";
  }
fi
