#!/bin/bash

# Define a function to calculate the sum of two numbers
function sum {
  local num1=$1
  local num2=$2
  local result=$((num1 + num2))
  echo $result
}

# Call the function and capture the return value
result=$(sum 5 3)

# Print the result
echo "The sum is: $result"
