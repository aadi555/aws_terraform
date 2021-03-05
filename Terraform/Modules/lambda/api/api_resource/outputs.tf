output "resource_id" {
  value = aws_api_gateway_resource.proxy.id
}


output "pathpart" {
  value = aws_api_gateway_resource.proxy.path_part
}