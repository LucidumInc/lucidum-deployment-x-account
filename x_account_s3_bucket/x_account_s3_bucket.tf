provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}


resource "aws_s3_bucket" "lucidum_x_account_deploy" {
  bucket_prefix = "${var.stack_name}-"
  acl           = "private"

  tags = {
    Name        = var.stack_name
  }
  
  lifecycle_rule {
    id      = "lambda_bucket_life"
    enabled = true
    
    expiration {
       days = 2
    }
  }
}


data "aws_iam_policy_document" "lucidum_x_account_deploy" {
  version = "2012-10-17"

  statement {
    effect  = "Allow"
    actions = ["s3:*"]

    resources = [
      aws_s3_bucket.lucidum_x_account_deploy.arn,
      "${aws_s3_bucket.lucidum_x_account_deploy.arn}/*",
    ]

    principals {
      type        = "AWS"
      identifiers = [
          "arn:aws:iam::${var.trusted_accounts[0]}:root",
          "arn:aws:iam::${var.trusted_accounts[0]}:role/${var.lambda_execution_role}",
      ]
    }
  }
}


resource "aws_s3_bucket_policy" "lucidum_x_account_deploy" {
  bucket = aws_s3_bucket.lucidum_x_account_deploy.id
  policy = data.aws_iam_policy_document.lucidum_x_account_deploy.json
}


output "lucidum_x_account_deploy_s3_bucket" {
  value = aws_s3_bucket.lucidum_x_account_deploy.id
}
