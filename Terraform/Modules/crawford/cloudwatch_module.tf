module "cloudwatch" {
  source = "../../Modules/lambda/cloudwatch"
  cloud_watch_log = {
    name              = "/aws/lambda/${module.lambda_function_in_vpc.lambda_name}"
    retention_in_days = 14
  }
}



