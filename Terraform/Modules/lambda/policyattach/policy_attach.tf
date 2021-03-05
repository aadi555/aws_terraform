resource "aws_iam_role_policy_attachment" "lambda_logs" {
  role       = var.iam_policy_attach.role
  policy_arn = var.iam_policy_attach.policy_arn
}