output "lambda_invoke_url" {
  
  value = module.lambda_function_in_vpc.lambda_invoke_url
}

output "lambda_name" {
  
  value = module.lambda_function_in_vpc.lambda_name
}