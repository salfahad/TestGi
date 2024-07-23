#!/bin/bash

DIRECTORY="/home/ec2-user/workspace"
BUCKET_NAME="cd2401-8888"

if [ -d "$DIRECTORY" ]; then
    aws s3 cp "$DIRECTORY" s3://$BUCKET_NAME/ --recursive
    echo "Uploaded contents of $DIRECTORY to s3://$BUCKET_NAME/"
else
    echo "Directory $DIRECTORY does not exist."
fi
