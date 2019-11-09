#!/bin/bash -x
valid=true
count=1
isFullTime=1;
isPartTime=2;
checkEmp=$(( RANDOM%3 ));
empRatePerHour=10;
while [ $valid ]
 do
  checkEmp=$(( RANDOM%3 ));
  echo $count
  if [ $count -eq 50 ]
  then
      break
  else
	  case  $checkEmp in 
   $isFullTime) 
    empHour=1;;
   $isPartTime) 
    empHour=0.5;;
 	    *)
    empHour=0;;
   esac
   (( count++ ))
  salary=$(( $empRatePerHour*$empHour ));
  sum=$(($sum + $salary))
  fi
done

