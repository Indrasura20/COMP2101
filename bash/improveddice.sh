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



#Task 1:
#Number of sides is assigned to a variable as range of random number.
Range=6

#Bias or minimum value for the generated number is assigned to a variable.
Bias=1


#Dice is rolled using the variables for the range and bias.
# Telling the user we have started processing.
echo "Rolling..."
# roll the dice and save the results
die1=$(( RANDOM % Range + Bias))
die2=$(( RANDOM % Range + Bias ))

#Task 2:
Sum=$(( die1 + die2 ))
Average=$(( $Sum / 2))
#A summary of what was rolled and what the results of the arithmetic were are displayed to the user.
echo "Rolled $die1, $die2"
echo "The sum of the rolled dice is $Sum."
echo "The average of the rolled dice is $Average."
