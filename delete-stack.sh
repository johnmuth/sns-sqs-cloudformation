#!/usr/bin/env bash

stackName='sns-to-sqs'

echo "Calling delete-stack"
aws cloudformation delete-stack --stack-name "$stackName"
echo "Waiting for delete-stack to complete"
aws cloudformation wait stack-delete-complete --stack-name "$stackName"
echo "delete-stack complete"

