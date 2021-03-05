output "iam_role" {
  value = aws_iam_role.lambda_exec.name
}

output "iam_role_arn" {
  value = aws_iam_role.lambda_exec.arn
}
