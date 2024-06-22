#!/bin/bash

# Function to perform basic calculation
basic_calculator() {
  local number1=$1
  local operator=$2
  local number2=$3

  case $operator in
    "+")
      result=$(echo "$number1 + $number2" | bc)
      ;;
    "-")
      result=$(echo "$number1 - $number2" | bc)
      ;;
    "*")
      result=$(echo "$number1 * $number2" | bc)
      ;;
    "/")
      if [ "$number2" -ne 0 ]; then
        result=$(echo "scale=2; $number1 / $number2" | bc)
      else
        echo "Error: Division by zero is not allowed."
        exit 1
      fi
      ;;
    *)
      echo "Invalid operator. Please use +, -, *, or /."
      exit 1
      ;;
  esac

  echo "Result: $result"
}

# This will ask staff for name and department
echo "Please enter Staff name:"
read name

echo "Please enter Staff department:"
read department

echo "Please confirm number of years active"
read active

# This will ask the user for operands and operator
echo "Enter the first number:"
read number1

echo "Enter the operator (+, -, *, /):"
read operator


echo "Enter the second number:"
read number2

# Perform the calculation
echo "Calculating..."
basic_calculator "$number1" "$operator" "$number2"

# Display user information and the result
echo "Name: $name"
echo "Department: $department"
echo "Active years: $active"
