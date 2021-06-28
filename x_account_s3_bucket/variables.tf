variable "stack_name" {
  type    = string
  default = "lucidum-x-account-deploy"
}

variable "aws_region" {
  type    = string
  default = "us-west-1"
}

variable "aws_profile" {
  type    = string
  default = "default"
}

variable "trusted_accounts" {
  type    = list
  default = [ "308025194586", "906036546615" ]
}

variable "child_account" {
  type = string
  default = "906036546615"
}

variable "parent_account" {
  type = string
  default = "308025194586"
}