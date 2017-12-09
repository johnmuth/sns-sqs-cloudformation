# sns-sqs-cloudformation

This repository provides a minimal demonstration of how to create:
  - one SNS Topic, 
  - one SQS Queue,
  - configured such that messages sent to the SNS Topic automatically get sent to the SQS Queue,
  - using only a Cloudformation template.
    
## Prerequisites

  - [aws cli](https://github.com/aws/aws-cli)
  - your [aws account id](http://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html)

## Quick start

1. Set environment variable AWS_ACCOUNT_ID:

```bash
export AWS_ACCOUNT_ID=123456789012
```

2. Create the stack:

```bash
./create-stack.sh
```

If it succeeds you will see the Cloudformation stack, the SNS Topic and the SQS Queue in the AWS console.

3. Publish a message to the SNS Topic:

```bash
./publish-sns.sh
```

4. Receive the message from the SQS Queue:

```bash
./receive-sqs.sh
```

You should see the message ("Hello this is a message about foo") and message attributes (from the file `sns.message-attributes.FooTopic.json`) in the response.

5. Delete the stack:

```bash
./delete-stack.sh
```
