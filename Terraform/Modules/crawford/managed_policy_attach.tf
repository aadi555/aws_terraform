variable "managed_policies" {
  default = ["arn:aws:iam::aws:policy/AWSLakeFormationDataAdmin",
    "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
    "arn:aws:iam::aws:policy/AWSLambda_FullAccess",
    "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess",
    "arn:aws:iam::aws:policy/AmazonRedshiftDataFullAccess",
    "arn:aws:iam::aws:policy/AmazonRedshiftFullAccess",
    "arn:aws:iam::aws:policy/SecretsManagerReadWrite",
    "arn:aws:iam::aws:policy/service-role/AmazonAPIGatewayPushToCloudWatchLogs",
    "arn:aws:iam::aws:policy/AmazonRedshiftFullAccess",
  ]
}

resource "aws_iam_role_policy_attachment" "role-policy-attach" {
  count      = "${length(var.managed_policies)}"
  policy_arn = "${element(var.managed_policies, count.index)}"
  role       = "${module.iam_role.iam_role}"
}