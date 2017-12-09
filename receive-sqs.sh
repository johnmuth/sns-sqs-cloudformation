#!/usr/bin/env bash

set -e
set -u

region='us-east-1'
queueName='BarQueue'

queueUrl="https://sqs.$region.amazonaws.com/$AWS_ACCOUNT_ID/$queueName"

aws sqs receive-message --queue-url "$queueUrl"
