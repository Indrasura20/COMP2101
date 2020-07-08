#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
title="King"
name=$USER
hostname=$(hostname)
day=$(date +%A)
time=$(date +'%I:%M %p')
###############
# Main        #
###############
cat <<EOF


EOF

#Task4:
#I have given different conditions for each day
if [[ $day = Monday ]]; then
cowt='You shall be confident on Monday.'
elif [[ $day = Tuesday ]]; then
cowt='You will be optimistic on Tuesday.'
elif [[ $day = Wednesday ]]; then
cowt='You will succeed on Wednesday.'
elif [[ $day = Thursday ]]; then
cowt='You will do your best on Thursday.'
elif [[ $day = Friday ]]; then
cowt='You will find happiness on Friday.'
elif [[ $day = Saturday ]]; then
cowt='You will be Energetic on Saturday.'
elif [[ $day = Sunday ]];
then
cowt="You shall be Superman on Sunday."
fi
#I assigned the conditions to the cowt variable

#Then I used the cowsay command to invoke the conditions for Task4

cowsay "$cowt Welcome to planet $hostname, $title $name!
It is $day at $time"
