#!/bin/bash
echo "Please enter your number: "n
read n
b=`expr $n % 2`
if [ $b -eq 0 ]
then
echo "b is an Even number"
else
echo "b is an Odd number"
fi

