module "lambda_function_in_vpc" {
source = "../../Modules/lambda/lambda"
lambda_settings = {
  function_name = "testlambda1"
  description = "test1"
  s3_bucket = "testpipelineec2"
  s3_key = "lambda/edl_lambda_redshiftaccess.zip"
  role = module.iam_role.iam_role_arn

  }

  security_group_ids = ""
  subnet_ids = ""
}
