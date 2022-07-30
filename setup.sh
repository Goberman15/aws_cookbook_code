AWS_REGION=ap-southeast-1
AWS_ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
PRINCIPAL_ARN=$(aws sts get-caller-identity --query Arn --output text)
echo $AWS_REGION
echo $AWS_ACCOUNT_ID
echo $PRINCIPAL_ARN
