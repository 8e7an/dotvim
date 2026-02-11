#!/usr/bin/env bash

# The read command has several options (flags) to customize the input process: # Option 	What It Does	Example
# -p	Displays a prompt message directly, without needing a separate echo command.	
#     read -p "Enter your age: " age
# -s	Silences the input (useful for passwords); the text typed by the user is
#     not displayed on screen.	
#     read -sp "Enter Password: " passvar
# -t	Sets a timeout in seconds. If no input is received within the time limit,
#     the command exits.	
#     read -t 5 -p "Enter data (5s timeout): " input
# -n	Reads only a specified number of characters (e.g., -n 1 for a single
#     character "yes/no" prompt) and doesn't require pressing Enter.	
#     read -n 1 -p "Continue? (Y/N): " confirm
# -a	Reads multiple inputs (separated by spaces) into an array.	
#     read -a items -p "Enter items: "
# -r	Prevents backslashes from being interpreted as escape characters, which
#     is good practice for general input.
#

# Reading in the responses as an array (list of items) examples:
# read -a items -p "Enter a list of items (separated by spaces): "
# echo "You entered: ${items[@]}"
# echo "The first item is: ${items[0]}"
#

clear

# User response with a timelimit of 3 seconds taking 1 character response
read -t 3 -n 1 -p "You have 3 seconds to answer: do want to proceed - Yes [y] or No [n]?" proceed
if [ -n "$proceed" ]; then
    if [[ $proceed == "y" ]]; then
        echo -e "\nYes, you want to proceed.\n"
    elif [[ $proceed == "n" ]]; then
        echo -e "\nNo, you do not want to proceed.\n"
    else
        echo -e "\nThat's not a valid response\n"
    fi
else
    echo -e "\nToo slow - you didn't answer in time.\n"
fi

exit 0

: <<'END_COMMENT'
# User response with a timelimit of 3 seconds taking the response
read -t 3 -p "You have 3 seconds to answer: do want to proceed - Yes or No? " proceed
if [ -n "$proceed" ]; then
    echo -e "So your answer was '$proceed'.\n"
else
    echo -e "\nToo slow - you didn't answer in time.\n"
fi
END_COMMENT

#exit 0

#: <<'END_COMMENT'
# User response with a timelimit of 3 seconds taking the response
read -t 3 -p "You have 3 seconds to answer: do want to proceed - Yes or No? " proceed
if [ -z "$proceed" ]; then
    echo -e "Too slow - you didn't answer in time.\n"
else
    echo -e "\nSo your answer was '$proceed'.\n"
fi
#END_COMMENT

#exit 0

#echo "END"
