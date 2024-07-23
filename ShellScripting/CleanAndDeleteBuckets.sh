#!/bin/bash

# Define the S3 buckets to be cleaned
buckets=("s3://something-something12" "s3://something-something14" "s3://testb2002")

# Function to clean a single S3 bucket
clean_bucket() {
    local bucket=$1
    echo "Cleaning bucket: $bucket"

    # List all objects in the bucket and delete them
    aws s3 rm $bucket --recursive
    if [ $? -eq 0 ]; then
        echo "Successfully cleaned $bucket"
    else
        echo "Failed to clean $bucket"
    fi
}

# Iterate over the list of buckets and clean each one
for bucket in "${buckets[@]}"; do
    clean_bucket $bucket
done

echo "All specified buckets have been cleaned."
