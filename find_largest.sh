#!/bin/bash

# Prompt the user to enter a list of numbers seperated by spaces

echo "Enter a list of numbers separated by spaces:"
read -a numbers

# Check if the user has provided any input

if [ ${#numbers[@]} -eq 0 ]; then
    echo "Error: No numbers were provided."
    exit 1
fi

# Initialize the largest number with the first element in the array

largest=${numbers[0]}

# Iterate through the array to find the largest number

for num in "${numbers[@]}"; do
    # Check if the current number is greater than the largest number found so far
    if (( num > largest )); then
        largest=$num
    fi
done


# Print the largest number
echo "The largest number is: $largest"
