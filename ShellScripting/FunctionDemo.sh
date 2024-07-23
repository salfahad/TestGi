#!/bin/bash

clean_bucket(){
    echo "CLeaning Bucket "
}

# Work - get the job done

for i in {1..5}; do
    clean_bucket
    echo "Cleaned Bucket $i"
done