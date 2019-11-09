#!/bin/bash -x
isFullTime=1;
isPartTime=2;
checkEmp=$(( RANDOM%3 ));
empRatePerHour=10;
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
salary=$(( $empRatePerHour*$empHour ));
 

