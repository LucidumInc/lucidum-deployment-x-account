variable "stack_name" {
  type    = string
  default = "lucidum_x_account_deployment"
}

variable "assume_role_name" {
  type    = string
  default = "lucidum_assume_role"
}

variable "assume_role_creation" {
  type    = bool
  default = true
}

variable "trust_account" {
  type    = string
}

variable "trust_external_id" {
  type    = string
  default = "lucidum-access"
}

variable "aws_region" {
  type    = string
  default = "us-west-1"
}

variable "aws_profile" {
  type    = string
  default = "default"
}

variable "max_session_duration" {
  type    = number
  default = 43200
}

variable "environment" {
  type    = string
  default = "prod"
}

variable "ec2_detection" {
  type    = bool
  default = false
}

variable "lambda_log_group_prefix" {
  type    = string
  default = "/aws/lambda/"
}

variable "lucidum_s3_bucket" {
  type    = string
  default = "example-ec2-detection-bucket"
}

variable "ec2_detection_name" {
  type    = string
  default = "lucidum-ec2-detection"
}

variable "us_west_1_enable" {
  type    = bool
  default = false
}

variable "us_west_2_enable" {
  type    = bool
  default = false
}

variable "us_east_1_enable" {
  type    = bool
  default = false
}

variable "us_east_2_enable" {
  type    = bool
  default = false
}

variable "ca_central_1_enable" {
  type    = bool
  default = false
}

variable "eu_north_1_enable" {
  type    = bool
  default = false
}

variable "eu_west_3_enable" {
  type    = bool
  default = false
}

variable "eu_west_2_enable" {
  type    = bool
  default = false
}

variable "eu_west_1_enable" {
  type    = bool
  default = false
}

variable "eu_central_1_enable" {
  type    = bool
  default = false
}

variable "ap_south_1_enable" {
  type    = bool
  default = false
}

variable "ap_northeast_1_enable" {
  type    = bool
  default = false
}

variable "ap_northeast_2_enable" {
  type    = bool
  default = false
}

variable "ap_southeast_1_enable" {
  type    = bool
  default = false
}

variable "ap_southeast_2_enable" {
  type    = bool
  default = false
}

variable "sa_east_1_enable" {
  type    = bool
  default = false
}
