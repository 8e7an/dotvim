#!/usr/bin/env bash
#
# function_args_test.sh
#
# In bash functions can be declared like:
# function function_name {
# Or
# function_name () {
#

echo -e "\nargument_info:"

#function arguments_info {
arguments_info () {
    for var in $*
    do
        let i=i+1
        echo "The \$${i} argument is: ${var}"
    done
    echo "Total count of arguments: $#"
}
arguments_info These are arguments 1 2 3

echo -e "\nargument_behaviours:"

# $@ and $* have different behavior when they were enclosed in double quotes.
# I think for $* they aren't expanded, but for $@ they are expanded.
# $* echos on one line whereas $@ echos on seperate lines.
#function arguments_behaviours {
arguments_behaviours () {
    echo -e "\n--- \"\$*\""
    for ARG in "$*"
    do
        echo $ARG
    done

    echo -e "\n--- \"\$@\""
    for ARG in "$@"
    do
        echo $ARG
    done
}
arguments_behaviours These are arguments 1 2 3
