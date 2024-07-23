#!/bin/bash

# Array in Shell Script. It holds one or more than one value
potatoes_to_ship=(11 2 3 4 5 6 7 10)


# Find lenght of an array
length_of_the_array=${#potatoes_to_ship[@]}

echo "Total Array Element $length_of_the_array"

echo "Give me first value form the array: ${potatoes_to_ship[0]}"

echo "****************"

buckets_name=("something-something12" "something-something14" "testb2002")

# Find lenght of an array
length_of_the_array=${#buckets_name[@]}

echo "Total Array Element $length_of_the_array"

# echo "Give me first value form the array: ${buckets_name[0]}"

for bucket in "${buckets_name[@]}"; do
    echo "Bucket Name : $bucket"
done






