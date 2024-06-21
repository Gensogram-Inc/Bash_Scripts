#!/bin/bash

# Prompt user to enter any number
read -p "Enter a number: " number

# Loop to count down from the number to 0
while [ $number -ge 0 ]; do
echo $number

# Make the number smaller by 1
number=$(( number - 1 ))

# Wait for 1 second
sleep 1
done