#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)
echo "Guess the password."
read -s -p "" guess
referenceString="password"

[ $guess = $referenceString ] && echo "Correct!" || echo "Incorrect."

#Task3
#I provided if conditions inside each of the if conditions to test the entered
# password a total of 5 times and providing the result of it each time.
#If the user inputs the correct password the script ends.
if [[ $guess = "$referenceString" ]]; then
  echo 'You are right.'
else
  echo 'You got it wrong.'
  echo 'Try again. You have 4 more chances'
  read -s -p "" guess
  if [[ $guess = "$referenceString" ]]; then
    echo 'You are right.'
  else
    echo 'You got it wrong.'
    echo 'Try again. You have 3 more chances'
    read -s -p "" guess
    if [[ $guess = "$referenceString" ]]; then
      echo 'You are right.'
    else
      echo 'You got it wrong.'
      echo 'Try again. You have 2 more chances'
      read -s -p "" guess
      if [[ $guess = "$referenceString" ]]; then
        echo 'You are right.'
      else
        echo 'You got it wrong.'
        echo 'Try again. Last chance!!'
        read -s -p "" guess
        if [[ $guess = "$referenceString" ]]; then
          echo 'You are right.'
        else
          echo 'You got it wrong.'
          echo 'Please try again after sometime.'
        fi
      fi
    fi
  fi
fi
