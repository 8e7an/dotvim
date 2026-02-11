#!/usr/bin/env bash
#
# Other way to while condition in bash:
#   while [ $count -gt 0 ]; do
#
# Other ways to decriment a variable in bash:
#   count=$(( $count - 1 ))
#   ((--count))
#   let "count--"

echo -e "\nWhile loop:"

# while loop in bash:
while_count=4
while (( $while_count > 0 )); do
    echo "Value of while_count is: $while_count"
    ((while_count--))
done

echo -e "\nUntil loop:"

# util loop in bash tests and runs the loop until it is true
until_count=1
until [ $until_count -gt 5 ]; do
    echo "Value of until_count is: $until_count"
    until_count=$(($until_count + 1))
done

echo -e "\nWhile loop with break:"

# while loop 
while_count_break=0
:close
    echo "Value of while_count_break is: $while_count_break"
    while_count_break=$((while_count_break + 1))
    if [ $while_count_break -ge 5 ]; then
        break
    fi
#done

echo -e "\nFor (in inclusive range) loop:"

# for (in inclusive range) loop
for i in {1..5}; do
    echo "$i"
done

echo -e "\nFor (in list) loop:"

# for (in list) loop
for i in {10,15,25}; do
    echo "$i"
done
