resource "aws_api_gateway_integration" "lambda" {
   rest_api_id = var.gateway_integration.rest_api_id #aws_api_gateway_rest_api.rest_api_gateway.id
   resource_id = var.gateway_integration.resource_id #aws_api_gateway_method.proxy.resource_id
   http_method = var.gateway_integration.http_method #aws_api_gateway_method.proxy.http_method 
   integration_http_method = var.gateway_integration.integration_http_method #"POST"
   type                    = "AWS_PROXY"   
   uri                     = var.gateway_integration.uri #aws_lambda_function.lambda_vpc.invoke_arn
   
}