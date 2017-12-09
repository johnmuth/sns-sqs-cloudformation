#!/usr/bin/env bash

stackName='sns-to-sqs'

echo "Calling create-stack"
aws cloudformation create-stack --stack-name "$stackName" --template-body "file://cloudformation.$stackName.json"
echo "Waiting for create-stack to complete"
aws cloudformation wait stack-create-complete --stack-name "$stackName"
echo "create-stack complete"

