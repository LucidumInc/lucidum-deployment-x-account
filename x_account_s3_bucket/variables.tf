variable "stack_name" {
  type    = string
  default = "lucidum-x-account-s3-bucket"
}

variable "aws_region" {
  type    = string
  default = "us-west-1"
}

variable "aws_profile" {
  type    = string
  default = "default"
}

variable "lambda_execution_role" {
  type    = string
  default = "lucidum-ec2-detection-prod"
}

variable "trusted_accounts" {
  type    = list
}

