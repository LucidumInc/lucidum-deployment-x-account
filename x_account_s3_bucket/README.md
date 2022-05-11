<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.12.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.lucidum_x_account_deploy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_policy.lucidum_x_account_deploy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_iam_policy_document.lucidum_x_account_deploy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | n/a | `string` | `"default"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | n/a | `string` | `"us-west-1"` | no |
| <a name="input_lambda_execution_role"></a> [lambda\_execution\_role](#input\_lambda\_execution\_role) | n/a | `string` | `"lucidum-ec2-detection-prod"` | no |
| <a name="input_stack_name"></a> [stack\_name](#input\_stack\_name) | n/a | `string` | `"lucidum-x-account-s3-bucket"` | no |
| <a name="input_trusted_accounts"></a> [trusted\_accounts](#input\_trusted\_accounts) | n/a | `list(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lucidum_x_account_deploy_s3_bucket"></a> [lucidum\_x\_account\_deploy\_s3\_bucket](#output\_lucidum\_x\_account\_deploy\_s3\_bucket) | Return bucket ID |
<!-- END_TF_DOCS -->