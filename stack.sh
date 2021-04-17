#!/bin/bash
aws cloudformation update-stack \
  --stack-name ext-checker \
  --template-body file://ext_checker_cnf.yaml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters 'ParameterKey=LambdaFunctionPackage,ParameterValue=s3://ext-checker-aggarzo/ext_checker.zip'

