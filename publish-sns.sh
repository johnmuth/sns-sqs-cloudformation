#!/usr/bin/env bash

set -e
set -u

region='us-east-1'
topicName='FooTopic'

topicArn="arn:aws:sns:$region:$AWS_ACCOUNT_ID:$topicName"
messageAttributesFilename="sns.message-attributes.$topicName.json"
messageBody='Hello this is a message about foo'

aws sns publish --topic-arn "$topicArn" --message "$messageBody" --message-attributes "file://$messageAttributesFilename"