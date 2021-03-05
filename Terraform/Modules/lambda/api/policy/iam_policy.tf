resource "aws_iam_policy" "lambda_log_policy" {
  name        = var.iam_policy.name
  path        = "/"
  description = var.iam_policy.description
  policy = var.iam_policy.policy
}

