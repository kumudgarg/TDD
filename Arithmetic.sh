#!/bin/bash -x
declare -A Test
read -p  "enter the value for a" a
read -p  "enter the value for b" b
read -p  "enter the value for c" c
Test[test1]=$(( ($a + $b) * $c ))
Test[test2]=$(( ($a * $b) + $c ))
Test[test3]=$(( $c + ($a / $b) ))
Test[test4]=$(( ($a % $b) + $c ))


echo ${Test[test4]}
