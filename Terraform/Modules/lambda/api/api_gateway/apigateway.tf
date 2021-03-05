resource "aws_api_gateway_rest_api" "rest_api_gateway" {

  name        = "${var.restapi_settings.name}-gateway"
  description = "Lambda gateway"
  
  endpoint_configuration {
    types = ["REGIONAL"]
  }
}