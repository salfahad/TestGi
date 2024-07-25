#!/bin/bash

# shellcheck disable=SC2188
<<comment
 
 1. Check abcd S3 Bucket does exists or not
 2. If exists return 0 and do not create bucket
 3. If does not exists return 1 and create a new bucket
 aws s3 ls "s3://testb2002" > /dev/null 2>&1

comment

# echo "Lets build something"

function bucket_exists {
  local bucket_name=$1
  # An error occurred (NoSuchBucket) when calling 
  # the ListObjectsV2 operation: The specified bucket does not exist
  # USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
  # aws s3 ls "s3://$bucket_name" | grep "NoSuchBucket"  
  # '/THRSL_C_C_V/{print $3}'
  # aws s3 ls "s3://shellscript05" 2>&1 | awk '{print $4}'
  RESPONSE=$(aws s3 ls "s3://$bucket_name" 2>&1 | awk '{print $4}' | sed 's/[()]//g')

  echo "$RESPONSE"

  if [ "$RESPONSE" = "NoSuchBucket" ]; then
    echo "Bucket $1 does not exists"
    echo "Creating Bucket"
    make_bucket_response=$(aws s3 mb "s3://$bucket_name")
    echo "$make_bucket_response"

    return 0
  else
    echo "Bucket $1 does not exist"
    return 1
  fi

}

bucket_exists "$1"
