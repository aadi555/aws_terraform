output "lambda_invoke_url" {
  
  value = aws_lambda_function.lambda_vpc.invoke_arn
}

output "lambda_name" {
  
  value = aws_lambda_function.lambda_vpc.function_name
}