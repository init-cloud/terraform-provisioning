#!/bin/bash
set -ex

AWS_REGION="ap-northeast-2"

ARTIFACT=`packer build -machine-readable -var 'aws_access_key=my_access_key' -var 'aws_secret_key=my_secret_access_key' default_ubuntu_packer_template.json | awk -F, '$0 ~/artifact,0,id/ {print $6}'`
echo "packer output:"

cat default_ubuntu_packer_template.json
AMI_ID=`echo $ARTIFACT | cut -d ':' -f2`

echo "[AMI ID: ${AMI_ID}]"
echo "[Writing ami.tf and uploading it to s3]"

echo 'variable "APP_INSTANCE_AMI" { default = "'${AMI_ID}'" }' > ami.tf
S3_BUCKET=`aws s3 ls --region $AWS_REGION | grep terraform-state | tail -n1 | cut -d ' ' -f3`
aws s3 cp ami.tf s3://${S3_BUCKET}/ami.tf --region $AWS_REGION
