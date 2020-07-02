#!/bin/bash
# This script demonstrates how the shift command works
myargs=()
#verboseMode and Debug Mode is already OFF
verboseMode="OFF"
debug="OFF"
# loop through the command line arguments
while [ $# -gt 0 ]; do

# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array

  #Using case statements to recognize different options:
  case "$1" in
    #help for the command is printed if -h is recognized
    -h )
      echo "$0 [-h|--help] [-v] [-d N (where 'N' is a single digit number.)]"
      exit
      ;;

    #verbose mode is turned ON if -v option is recognized
    -v )
      verboseMode="ON"
      echo "Verbose mode is set to $verboseMode."
      ;;

    #Debug level is assigned if a single digit number is given after -d option or an error message is shown
    -d )
      if [ "$2" = "" ]; then
        echo "Error- single digit number required after the -d option.
        "
      else
        #debug level is assigned with the single digit number
        debug="ON"
        debugLevel=$2
        echo "Debug level is set to $debugLevel"
      fi
      ;;
    #Anything unrecognized will also go into the myargs array
    * )
      echo "Unrecognized format $1.
      "
  esac
  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did
  echo "Added \'$1\' to the arguments array"
  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
echo "Done

"


#TASK2: display the settings and myargs contents

#Tell the user if vebose mode is on
echo "Verbose mode is $verboseMode"
#Tell the user if debug mode is on and if it is, what number it is set to
if [ "$debug" = "ON" ]; then
  echo "Debug mode is ON and it's level is set to $debugLevel."
else
  echo "Debug mode is $debug"
fi
#Print out the myargs array with a label
echo "The contents in the array are:"
echo "${myargs[@]}"
echo ""
