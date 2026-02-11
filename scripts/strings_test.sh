#!/usr/bin/env bash
#
# In bash if conditions:
# note1: whitespace around = is required
# note2: use "" around string variables to avoid shell expansion of special characters as *
#

str_of_certain_lengt="This is a string of a certain length"
echo "The variable STRING is of length: ${#str_of_certain_lengt}" # 16

str="my name is bevan sharp"
substr="bevan"
# expr index isn't considered "modern" and isn't supported on the Mac
#index=$(expr index "$str" "$substr") # 1 is the position of the first 't' in $string
# Instead use the folliwng built-in shell feature (of bash):
pos=${str%%$substr*}

#echo "$pos"
#echo "$str"

# $pos and $str are the same values if no substring match is found
if [[ "$pos" = "$str" ]]; then
    echo "Substring not found"
else
    index=$(( ${#pos} + 1 ))
    echo "Substring found at index: $index"
fi

# Replace last occurance of be in to_be_str with the day's date
to_be_str="to be or not to be"
echo ${to_be_str[@]/%be/be on $(date +%Y-%m-%d)} 


