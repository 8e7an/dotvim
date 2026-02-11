#!/usr/bin/env bash
#
# arguments_test.sh
#
# $* is a special parameter that represents all the positional arguments passed
# to the script (or function), expanded as a single string. The individual
# arguments within this single string are separated by the first character of
# the IFS (Input Field Separator) variable, which defaults to a space. 
#
# $*	
#   Expands to all arguments, which are then subject to word splitting and
#   globbing by the shell. Generally discouraged.	
#     one two three four (four separate words)
# "$*"	
#   One single string containing all arguments, separated by the first
#   character of the IFS variable (default is space).	
#     one two three four" (one single string)
# "$@"	
#   Individual arguments, each preserved as a separate, quoted string, even if
#   they contain spaces. This is the safest and most commonly recommended
#   usage.
#     "one" "two" "three four" (three separate strings)
#
# The behavior of $* is most clearly understood in comparison to "$*" and the
# commonly preferred "$@".
#
# Note, you can echo the return code of a shell script immediately after
# running the shell script with:
# echo $?
#
# Interpreting Exit Codes
#
# By convention, exit codes are integers between 0 and 255, with specific
# meanings: 
# 0: Indicates success or that the command executed without errors.
# Non-zero value (1-255): Signals a failure or an abnormal condition. 
# The specific number often relates to the type of error.
# 1: A general error.
# 2: Misuse of shell built-ins or a "file not found" error for ls.
# 126: Command found but not executable (permission denied).
# 127: Command not found.
# 130: Command terminated by Ctrl + C (signal 2).
#

# echo-out the number of arguments provided to the shell script
function File {
    echo "Number of arguments provided: $#"
}

function adder {
    echo "$(($1 + $2))" # echos-out: 472
    #echo $(($1 + $2)) # echos-out: 472
    #echo (($1 + $2)) # this produces a syntax error
    #echo ($1 + $2) # this produces a syntax error
    #echo $1 + $2 # echos-out: 17 + 455
}

adder 17 455

# if the number of argument provided to the bash shell script is not less than 1
#if [ ! $# -lt 1 ]; then
#if [[ ! $# < 1 ]]; then
if (( ! $# < 1 )); then
    # call the File function with the arguments passed to the shell script
    #File $*
    File $@
    exit 0
else
    echo "No arguments provided"
    exit 1
fi


# called as following example from the terminal:
#
# ./arguments_test.sh Shell is fun
#
