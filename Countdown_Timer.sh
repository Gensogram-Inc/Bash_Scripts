#!/bin/bash

# Prompt user to enter any number
number=$1

# Loop to count down from the number to 0
while [ $number -ge 0 ]; do
echo "The countdown  now is: $number"

# Make the number smaller by 1
number=$(( number - 1 ))

# Wait for 1 second
sleep 1
done
