# Deploy Lambda for monitoring EC2 events

This TF project is to deploy a Lambda function to monitor EC2 events.

## Design

Overall design is to:

0. Customer creates an IAM role.
1. Allowing a Lucidum Account to assume this role by creating an IAM
   policy, aka. trust policy. In the policy, one can further restrict
   caller to pass AWS's MFA as [condition][mfa-condition].
2. Define an `ExternalID` string so to restrict assuming role access
   by Lucidum only. Default to `lucidum-access`.
3. Create two S3 buckets, one for event data, one for TF execution state.
4. Install Lambda function.
5. Setup CloudWatch event rule to watch EC2 state events.
6. Lambda receives event which contains the EC2 ID.
7. Lambda _describes_ EC2 w/ its ID to get instance details.
8. Lambda dumps info to a `.json` on the S3 bucket.

### Assume role

![alt text](https://github.com/LucidumInc/lucidum-deployment-seed/blob/master/assume-role.jpg?raw=true)


## Docs

To generate TF docs, go into TF root folder,
eg. `x_account_s3_bucket`, and run the [terraform-docs][tf-docs]:

```shell
docker run --rm --volume "$(pwd):/terraform-docs" -u $(id -u) quay.io/terraform-docs/terraform-docs:0.16.0 markdown /terraform-docs > README.md
```

## terraform

### execute on cli

```
terraform apply \
  -var aws_region=${AWS_REGION} \
  -var aws_profile=${AWS_CHILD_ACCOUNT} \
  -var trust_account=${AWS_MAIN_ACCOUNT}
```

### use config file

Edit `terraform.tfvars` to set variables and `terraform apply`


## cloudformation

### set vars and execute

edit `clouformation.sh` to set variables and `bash cloudformation.sh`


## outputs

Both Terraform and CloudFormation deployments will generate an ARN txt
file containing the pre-existing, or generated, subaccount role
ARN. This file is consumed by top level `x_account_deployment.sh`
batch mode script.



[tf-docs]: https://github.com/terraform-docs/terraform-docs
[mfa-condition]: https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html
[ec2-states]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html
