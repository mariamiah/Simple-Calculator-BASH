#!/bin/bash
# This script calculates numbers provided by the user and returns correct results
# This function requests and reads a number entered by user from command prompt
function promptNumber(){
   echo "Please enter your first number"
   read number1
   echo "Please enter your second number"
   read number2
}
# This function requests user to enter the mathematical operation of choice
function promptOperation(){
  echo "Please enter a number of choice from this list:"
  echo "1. Addition"
  echo "2. Subtraction"
  echo "3. Multiplication"
  echo "4. Division"
  read choice
}

# This function provides conditionals to determine the right result
function calculateResult(){
  case $choice in
  1)res=`echo $number1 + $number2 | bc` 
  ;; 
  2)res=`echo $number1 - $number2 | bc` 
  ;; 
  3)res=`echo $number1 \* $number2 | bc` 
  ;; 
  4)res=`echo "scale=2; $number1 / $number2" | bc` 
  ;; 
esac
  echo "Result : $res"
}

# This function calls the previous functions
function main(){
  promptNumber
  promptOperation
  calculateResult
}
main