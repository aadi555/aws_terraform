resource "aws_lambda_function" "lambda_vpc" {
    handler       = "lambda.lambda_handler"
    runtime       = "python3.8"
    function_name = var.lambda_settings.function_name
    description   = var.lambda_settings.description
    role          = var.lambda_settings.role
    s3_bucket     = var.lambda_settings.s3_bucket
    s3_key        = var.lambda_settings.s3_key

    vpc_config {
      security_group_ids = [var.security_group_ids]
      subnet_ids = [var.subnet_ids]
      }

}