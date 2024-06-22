#!/bin/bash
echo "Please enter your number: "n
read n
b=`expr $n % 2`
if [ $b -eq 0 ]
then
echo "$n is an Even number"
else
echo "$n is an Odd number"
fi

