#!/usr/bin/env bash
#
# function_calc_test.sh
#
# $0 - The filename of the current script.
# $n - The Nth argument passed to script was invoked or function was called. Eg. $1 for the first arg, $2 for the second.
# $# - The number of argument passed to script or function.
# $@ - All arguments passed to script or function.
# $* - All arguments passed to script or function.
# $? - The exit status of the last command executed.
# $$ - The process ID of the current shell. For shell scripts, this is the process ID under which they are executing.
# $! - The process number of the last background command.
#

#function ENGLISH_CALC {
ENGLISH_CALC () {
    a=$1
    b=$3
    sign=$2
    #if [[ $sign == "plus" ]]; then
    #    echo "$a + $b = $(($a+$b))"
    #elif [[ $sign == "minus" ]]; then
    #    echo "$a - $b = $(($a-$b))"
    #elif [[ $sign == "times" ]]; then
    #    echo "$a * $b = $(($a*$b))"
    #fi

    case $sign in
        "plus")
            echo "$a + $b = $(($a+$b))"
            ;;
        "minus")
            echo "$a - $b = $(($a-$b))"
            ;;
        "times")
            echo "$a * $b = $(($a*$b))"
            ;;
        "divide") # any decimal value will be discarded with this operation
            echo "$a / $b = $(($a/$b))"
            ;;
        *)
            echo -e "No matching sign provided.\nYou can use the math operations: plus, minus, times and divide"
            ;;
    esac
}

ENGLISH_CALC
ENGLISH_CALC 3 plus 5
ENGLISH_CALC 5 minus 1
ENGLISH_CALC 4 times 6
ENGLISH_CALC 14 minus 6
ENGLISH_CALC 14 divide 6
ENGLISH_CALC 35 divide 10
