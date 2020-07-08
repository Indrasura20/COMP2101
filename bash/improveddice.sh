#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

#Task 1
#number of sides is assigned to a variable as range for random number.
range=6

#The bias is assigned to a variable.
bias=1

# Telling the user we have started processing
echo "Rolling..."

#Dice are rolled using the variables for the range and bias
die1=$(( RANDOM % $range + $bias ))
die2=$(( RANDOM % $range + $bias ))

#Results of the rolled dice are displayed
echo "
### Results ###"
echo "Rolled $die1, $die2"

#Sum of the results of the two dice are generated
Sum=$(( die1 + die2 ))
echo "The sum of the two rolled dice is $Sum."

#Average of the rolled dice is generated
Average=$(( Sum / 2 ))
echo "The average of the two rolled dice is $Average."
