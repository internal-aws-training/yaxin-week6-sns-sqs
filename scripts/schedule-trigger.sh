#!/bin/bash -e

cd $(dirname ${BASH_SOURCE[0]})/..

aws cloudformation deploy \
  --stack-name sns-sqs-dojo-stack \
  --region ap-southeast-1 \
  --template-file aws/cloudformation/template.yml \
  --capabilities CAPABILITY_NAMED_IAM