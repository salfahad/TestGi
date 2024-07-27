#!/bin/bash

DIRECTORY="/home/ec2-user/workspace"
BUCKET_NAME="cd2401-8888"

if [ -d "$DIRECTORY" ]; then
    for FILE in $DIRECTORY/*; do  # $DIRECTORY/* it provide all the files and folders name under the $DIRECTORY 
        aws s3 cp "$FILE" s3://$BUCKET_NAME/ #--recursive # Executing for single files only
        echo "Uploaded $FILE to $BUCKET_NAME"
    done
else
    echo "Directory $DIRECTORY does not exist."
fi


<<comment

# From CLI Doc
When passed with the parameter --recursive, the following cp
command recursively copies all files under a specified directory
to a specified bucket 

# From GitHub

https://github.com/aws/aws-cli/issues/8190

So --recursive is only intended for use under a specified directory or
prefix and not for single files. I don't think the cp 
command will support --recursive for single files
as that's not its intended use. But I agree that 
the current behavior is a confusing edge case. 
I couldn't find any other reports of this so 
I don't think it's a commonly encountered problem, 
but I think the command should error out or at 
least provide a warning when attempting to use
 --recursive for a single file. 
 Thanks again for reporting this issue — I will leave it open 
 for tracking.



comment

