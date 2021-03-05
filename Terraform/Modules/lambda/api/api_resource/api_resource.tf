resource "aws_api_gateway_resource" "proxy" {
   rest_api_id = var.rest_resource.rest_api_id #aws_api_gateway_rest_api.rest_api_gateway.id
   parent_id   = var.rest_resource.parent_id #aws_api_gateway_rest_api.rest_api_gateway.root_resource_id
   path_part   = var.rest_resource.path_part
   
}