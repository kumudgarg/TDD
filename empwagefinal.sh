#!/bin/bash -x
isFullTime=1;
isPartTime=2;
employeeCheck=$(( RANDOM%3 ));
if [ $isFullTime -eq $employeeCheck ]
 then
   {
        echo "employe is present";
   }
elif [ $isPartTime -eq $employeeCheck ]
 then
   {
        echo "part time employee present";

   } 
else
  {
       echo "employee is not present";
  }
fi
