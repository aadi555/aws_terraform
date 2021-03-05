resource "aws_iam_role" "lambda_exec" {
   name = var.iam_role.name

   assume_role_policy = var.iam_role.assume_role_policy
}