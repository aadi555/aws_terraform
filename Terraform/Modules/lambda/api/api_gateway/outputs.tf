output "restapi_id" {
    value = aws_api_gateway_rest_api.rest_api_gateway.id
  
}

output "restapi_parentid" {
    value = aws_api_gateway_rest_api.rest_api_gateway.root_resource_id
  
}

output "executionarn" {
  value = aws_api_gateway_rest_api.rest_api_gateway.execution_arn
}