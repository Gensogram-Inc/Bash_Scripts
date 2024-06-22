#!/bin/bash
echo "Enter the number: "
read n 
if [ $n -le 0 ]
then
	echo "Invalid number"
else
while [ $n -ge 0 ] 
do
echo The number $n
    let n=$n-1
done

echo "Finished"
fi
