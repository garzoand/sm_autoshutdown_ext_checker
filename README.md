# SageMaker Studio Auto Shutdown Extension Checker

This lambda function checks periodically if all the user profiles under each SageMaker Studio Domain has installed the [extension for auto-shutdown idle notebooks](https://github.com/aws-samples/sagemaker-studio-auto-shutdown-extension/tree/main/sagemaker_studio_autoshutdown). The lambda function will run once a day and send the list of all the user profiles which has no installed auto-shutdown extension to an SNS topic. Studio admins can subscribe to this SNS topic to get notifications daily if any of the user profiles has no extension installed.

## Steps to install

1. Run the **upload_lambda.sh** function which packages and uploads the lambda function to S3. You need to specify the S3 prefix as an input argument of the script:
```bash
./upload_lambda.sh s3://ext-checker/
```

