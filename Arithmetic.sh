#!/bin/bash -x
declare -A Test
count=0
valid=true
read -p  "enter the value for a" a
read -p  "enter the value for b" b
read -p  "enter the value for c" c
Test[1]=$(( ($a + $b) * $c ))
Test[2]=$(( ($a * $b) + $c ))
Test[3]=$(( $c + ($a / $b) ))
Test[4]=$(( ($a % $b) + $c ))
while [ $valid ]
do
 if [ $count -le 4 ]
 then
  Cases[((count++))]=${Test[$count]}
 else
 {
   break
 }
 fi
 done
echo ${Cases[@]}
echo "element in accending order are :"
for (( i = 0;  i < 4; i++ ))
do
  for (( j=i; j < 4-i-1; i++ ))
  do
    echo $j
    echo ${Cases[$((j+1))]}
   if [ ${Cases[j]} -gt ${Cases[$((j+1))]} ]
   then
       temp=${Cases[$j]}
       Cases[$j]=${Cases[$((j+1))]}
       Cases[$((j+1))]=$temp
   fi
  done
done
echo ${Test[*]}

echo "element in deccending order are :"
for (( i = 4;  i > 0; i-- ))
do
 {
  echo ${Test[$i]}
 }
done

