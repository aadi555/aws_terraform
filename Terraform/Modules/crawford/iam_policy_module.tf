module "aws_iam_policy" {
  source = "../../Modules/lambda/policy"
  iam_policy = {
    name        = "lambda_logging"
    description = "IAM policy for logging from a lambda"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
      {
          "Effect": "Allow",
          "Action": [
              "logs:CreateLogGroup",
              "logs:CreateLogStream",
              "logs:PutLogEvents"
          ],
          "Resource": "arn:aws:logs:*:*:*"
      },
      {
          "Effect": "Allow",
          "Action": [
              "iam:CreateUser",
              "iam:CreateAccessKey",
              "iam:AttachUserPolicy",
              "iam:AttachRolePolicy"
          ],
          "Resource": "*"
      }
	  
    ]
}
EOF
    }
}

