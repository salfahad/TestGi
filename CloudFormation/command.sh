#!/bin/zsh
# Do you want to validate?
aws cloudformation validate-template\
    --template-body file://ParamAndConditionExample.yaml

aws cloudformation create-stack\
    --stack-name ParamAndConditionExample1\
    --template-body file://ParamAndConditionExample.yaml\
    --parameters file://param.json\
    --capabilities CAPABILITY_NAMED_IAM


aws cloudformation create-stack\
    --stack-name CustomResource4\
    --template-body file://CustomResource.yaml\
    --capabilities CAPABILITY_NAMED_IAM

aws cloudformation update-stack\
    --stack-name CustomResource2\
    --template-body file://CustomResource.yaml --capabilities CAPABILITY_NAMED_IAM