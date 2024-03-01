#!/bin/bash

# Function to perform addition
addition() {
  echo "Sum: $(($1 + $2))"
}

# Function to perform subtraction
subtraction() {
  echo "Difference: $(($1 - $2))"
}

# Function to perform multiplication
multiplication() {
  echo "Product: $(($1 * $2))"
}

# Function to perform division
division() {
  if [ $2 -ne 0 ]; then
    echo "Quotient: $(($1 / $2))"
  else
    echo "Error: Division by zero is not allowed"
  fi
}

# Main script
echo "Simple Calculator"
echo "Enter first number: "
read num1
echo "Enter second number: "
read num2

echo "Select operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read choice

case $choice in
  1) addition $num1 $num2 ;;
  2) subtraction $num1 $num2 ;;
  3) multiplication $num1 $num2 ;;
  4) division $num1 $num2 ;;
  *) echo "Invalid choice" ;;
esac
