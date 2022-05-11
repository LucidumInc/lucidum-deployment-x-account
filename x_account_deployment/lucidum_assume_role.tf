/*
  Setup an AWS role Lucidum can assume to.
*/


# Trust policy
data "aws_iam_policy_document" "lucidum_assume_role_trust" {
  statement {
    effect = "Allow"

    # the Lucidum account used for assuming this role
    principals {
      type        = "AWS"
      identifiers = [var.trust_account]
    }

    condition {
      test     = "StringEquals"
      variable = "sts:ExternalId"

      # set to the private external ID string
      values   = [var.trust_external_id]
    }
    actions = ["sts:AssumeRole"]
  }
}

# Create an IAM role for AssumeRole use
# and attach the trust policy created above.
resource "aws_iam_role" "lucidum_assume_role" {
  count                = var.assume_role_creation ? 1 : 0
  name                 = var.assume_role_name
  assume_role_policy   = data.aws_iam_policy_document.lucidum_assume_role_trust.json
  max_session_duration = var.max_session_duration
}

# Resource permission policy.
# Determine what this role can do.
resource "aws_iam_role_policy" "lucidum_assume_role_trust" {
  count       = var.assume_role_creation ? 1 : 0
  name_prefix = var.assume_role_name
  role        = aws_iam_role.lucidum_assume_role[0].name
  policy      = file("lucidum_assume_role_policy.json")
}

# Dump the ARN to a local file
resource "local_file" "lucidum_role_arn" {
  count           = var.assume_role_creation ? 1 : 0
  content         = aws_iam_role.lucidum_assume_role[0].arn
  filename        = "lucidum_assume_role_arn.txt"
  file_permission = "0755"
}

output "lucidum_role_arn" {
  value = var.assume_role_creation ? aws_iam_role.lucidum_assume_role[0].arn : "none"
}
