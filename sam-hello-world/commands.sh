# create an s3 bucket
aws s3 mb s3://sam-hello-world-ec

#package cloudformation, you can also use "aws sam" instead of cloudformation
aws cloudformation package --s3-bucket sam-hello-world-ec --template-file template.yaml --output-template gen/template-generated.yaml

#deploy code
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name hello-world-lambda-sam --capabilities CAPABILITY_IAM