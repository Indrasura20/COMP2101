#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label


#The user is asked to input/enter 3 numbers and these numbers are stored in different variables.
read -p "Enter 1st number." firstnum
read -p "Enter 2nd number." secondnum
read -p "Enter 3rd number." thirdnum

#The sum of the numbers are calculated and the value is assigned to a variable.
sum=$((firstnum + secondnum + thirdnum))
#The product of the numbers are calculated and the value is assigned to a variable
product=$((firstnum * secondnum * thirdnum))

#The report of the calculations are shown:
cat <<EOF

$firstnum plus $secondnum plus $thirdnum is $sum
The product of $firstnum, $secondnum and $thirdnum is $product.
EOF
