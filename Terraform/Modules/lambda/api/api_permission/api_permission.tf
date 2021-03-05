resource "aws_lambda_permission" "apigw" {
   statement_id  = "AllowAPIGatewayInvoke"
   action        = "lambda:InvokeFunction"
   function_name = var.lambda_permission.function_name #aws_lambda_function.lambda_vpc.function_name
   principal     = "apigateway.amazonaws.com"

   # The  portion grants access from any method on any resource
   # within the API Gateway REST API.
   source_arn = var.lambda_permission.source_arn #"${aws_api_gateway_rest_api.rest_api_gateway.execution_arn}/*/*/${var.restapi_settings.path_part}"
}