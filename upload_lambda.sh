#!/bin/bash
if [ $# -eq 0 ]
then
  echo "Usage: upload_lambda.sh [s3 prefix]"
  exit 1
fi

zip ext_checker.zip ext_checker/*
aws s3 cp ext_checker.zip $1
