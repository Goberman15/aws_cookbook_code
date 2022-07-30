AWS_REGION=ap-southeast-1
CALLER_IDENTITY=$(aws sts get-caller-identity)
AWS_ACCOUNT_ID=$(echo $CALLER_IDENTITY | jq .Account | sed -e "s|\"||g")
PRINCIPAL_ARN=$(echo $CALLER_IDENTITY | jq .Arn | sed -e "s|\"||g")
echo $AWS_REGION
echo $AWS_ACCOUNT_ID
echo $PRINCIPAL_ARN
