#!/bin/bash

echo "Enter Number Size: "
read n

i=1
max=0
echo "Enter Numbers"
while [ $i -le $n ]
do
        read num
        if [ $i -eq 1 ]
        then
                max=$num
        else
                if [ $num -gt $max ]
                then
                        max=$num
                fi
        fi
let i=$i+1
done
echo The Largest Number is "$max"

