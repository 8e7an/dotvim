#!/usr/bin/env bash

names=( John Eric Jessica )
numbers=( 1 2 3 )
strings=( 'hello' 'world' )
NumberOfNames=${#names[@]} # ${names[@]} lists all the items in the array
second_name=${names[1]}

echo ${numbers[0]} ${numbers[1]} ${numbers[2]}
echo ${strings[0]} ${strings[1]}
echo "The number of names listed in the names array: $NumberOfNames"
echo "The second name on the names list is: $second_name"

# Loop through the names array
for name in "${names[@]}"; do
  echo "Name: $name"
done  
