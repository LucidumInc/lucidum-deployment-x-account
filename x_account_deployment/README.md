<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.12.1 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.2.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2_detection_ap_northeast_1"></a> [ec2\_detection\_ap\_northeast\_1](#module\_ec2\_detection\_ap\_northeast\_1) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_ap_northeast_2"></a> [ec2\_detection\_ap\_northeast\_2](#module\_ec2\_detection\_ap\_northeast\_2) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_ap_south_1"></a> [ec2\_detection\_ap\_south\_1](#module\_ec2\_detection\_ap\_south\_1) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_ap_southeast_1"></a> [ec2\_detection\_ap\_southeast\_1](#module\_ec2\_detection\_ap\_southeast\_1) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_ap_southeast_2"></a> [ec2\_detection\_ap\_southeast\_2](#module\_ec2\_detection\_ap\_southeast\_2) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_ca_central_1"></a> [ec2\_detection\_ca\_central\_1](#module\_ec2\_detection\_ca\_central\_1) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_eu_central_1"></a> [ec2\_detection\_eu\_central\_1](#module\_ec2\_detection\_eu\_central\_1) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_eu_north_1"></a> [ec2\_detection\_eu\_north\_1](#module\_ec2\_detection\_eu\_north\_1) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_eu_west_1"></a> [ec2\_detection\_eu\_west\_1](#module\_ec2\_detection\_eu\_west\_1) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_eu_west_2"></a> [ec2\_detection\_eu\_west\_2](#module\_ec2\_detection\_eu\_west\_2) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_eu_west_3"></a> [ec2\_detection\_eu\_west\_3](#module\_ec2\_detection\_eu\_west\_3) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_sa_east_1"></a> [ec2\_detection\_sa\_east\_1](#module\_ec2\_detection\_sa\_east\_1) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_us_east_1"></a> [ec2\_detection\_us\_east\_1](#module\_ec2\_detection\_us\_east\_1) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_us_east_2"></a> [ec2\_detection\_us\_east\_2](#module\_ec2\_detection\_us\_east\_2) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_us_west_1"></a> [ec2\_detection\_us\_west\_1](#module\_ec2\_detection\_us\_west\_1) | ./lambda_functions/ec2_detection | n/a |
| <a name="module_ec2_detection_us_west_2"></a> [ec2\_detection\_us\_west\_2](#module\_ec2\_detection\_us\_west\_2) | ./lambda_functions/ec2_detection | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.ec2_detection](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.ec2_detection](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.lucidum_assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.lucidum_assume_role_trust](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_iam_role_policy_attachment.ec2_detection](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [local_file.lucidum_role_arn](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [aws_iam_policy_document.lucidum_assume_role_trust](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ap_northeast_1_enable"></a> [ap\_northeast\_1\_enable](#input\_ap\_northeast\_1\_enable) | n/a | `bool` | `false` | no |
| <a name="input_ap_northeast_2_enable"></a> [ap\_northeast\_2\_enable](#input\_ap\_northeast\_2\_enable) | n/a | `bool` | `false` | no |
| <a name="input_ap_south_1_enable"></a> [ap\_south\_1\_enable](#input\_ap\_south\_1\_enable) | n/a | `bool` | `false` | no |
| <a name="input_ap_southeast_1_enable"></a> [ap\_southeast\_1\_enable](#input\_ap\_southeast\_1\_enable) | n/a | `bool` | `false` | no |
| <a name="input_ap_southeast_2_enable"></a> [ap\_southeast\_2\_enable](#input\_ap\_southeast\_2\_enable) | n/a | `bool` | `false` | no |
| <a name="input_assume_role_creation"></a> [assume\_role\_creation](#input\_assume\_role\_creation) | When set to true, will create an IAM role | `bool` | `true` | no |
| <a name="input_assume_role_name"></a> [assume\_role\_name](#input\_assume\_role\_name) | AssumeRole name | `string` | `"lucidum_assume_role"` | no |
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | Aplly TF using which profile for AWS access | `string` | `"default"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Apply to which region | `string` | `"us-west-1"` | no |
| <a name="input_ca_central_1_enable"></a> [ca\_central\_1\_enable](#input\_ca\_central\_1\_enable) | n/a | `bool` | `false` | no |
| <a name="input_ec2_detection"></a> [ec2\_detection](#input\_ec2\_detection) | n/a | `bool` | `false` | no |
| <a name="input_ec2_detection_name"></a> [ec2\_detection\_name](#input\_ec2\_detection\_name) | n/a | `string` | `"lucidum-ec2-detection"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"prod"` | no |
| <a name="input_eu_central_1_enable"></a> [eu\_central\_1\_enable](#input\_eu\_central\_1\_enable) | n/a | `bool` | `false` | no |
| <a name="input_eu_north_1_enable"></a> [eu\_north\_1\_enable](#input\_eu\_north\_1\_enable) | n/a | `bool` | `false` | no |
| <a name="input_eu_west_1_enable"></a> [eu\_west\_1\_enable](#input\_eu\_west\_1\_enable) | n/a | `bool` | `false` | no |
| <a name="input_eu_west_2_enable"></a> [eu\_west\_2\_enable](#input\_eu\_west\_2\_enable) | n/a | `bool` | `false` | no |
| <a name="input_eu_west_3_enable"></a> [eu\_west\_3\_enable](#input\_eu\_west\_3\_enable) | n/a | `bool` | `false` | no |
| <a name="input_lambda_log_group_prefix"></a> [lambda\_log\_group\_prefix](#input\_lambda\_log\_group\_prefix) | n/a | `string` | `"/aws/lambda/"` | no |
| <a name="input_lucidum_s3_bucket"></a> [lucidum\_s3\_bucket](#input\_lucidum\_s3\_bucket) | n/a | `string` | `"example-ec2-detection-bucket"` | no |
| <a name="input_max_session_duration"></a> [max\_session\_duration](#input\_max\_session\_duration) | 24-hour in seconds | `number` | `43200` | no |
| <a name="input_sa_east_1_enable"></a> [sa\_east\_1\_enable](#input\_sa\_east\_1\_enable) | n/a | `bool` | `false` | no |
| <a name="input_stack_name"></a> [stack\_name](#input\_stack\_name) | n/a | `string` | `"lucidum_x_account_deployment"` | no |
| <a name="input_trust_account"></a> [trust\_account](#input\_trust\_account) | Main variable to setup Lucidum account which will be granted AssumeRole | `string` | n/a | yes |
| <a name="input_trust_external_id"></a> [trust\_external\_id](#input\_trust\_external\_id) | Can be any string | `string` | `"lucidum-access"` | no |
| <a name="input_us_east_1_enable"></a> [us\_east\_1\_enable](#input\_us\_east\_1\_enable) | n/a | `bool` | `false` | no |
| <a name="input_us_east_2_enable"></a> [us\_east\_2\_enable](#input\_us\_east\_2\_enable) | n/a | `bool` | `false` | no |
| <a name="input_us_west_1_enable"></a> [us\_west\_1\_enable](#input\_us\_west\_1\_enable) | n/a | `bool` | `false` | no |
| <a name="input_us_west_2_enable"></a> [us\_west\_2\_enable](#input\_us\_west\_2\_enable) | n/a | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lucidum_role_arn"></a> [lucidum\_role\_arn](#output\_lucidum\_role\_arn) | n/a |
<!-- END_TF_DOCS -->