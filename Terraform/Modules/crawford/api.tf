module "restapi" {
  source = "../../Modules/lambda/api/api_gateway"

  restapi_settings = {
      name = "testapi"
  }

}

module "gateway_resource" {
  source = "../../Modules/lambda/api/api_resource"

  rest_resource = {
    path_part = "edltest"
    parent_id = module.restapi.restapi_parentid 
    rest_api_id = module.restapi.restapi_id
  }

}

module "gateway_method" {
  source = "../../Modules/lambda/api/gateway_method"

  gateway_method = {
    resource_id = module.gateway_resource.resource_id
    http_method = "ANY"
    authorization = "AWS_IAM"
    rest_api_id = module.restapi.restapi_id
  }

}

module "gateway_integration" {
  source = "../../Modules/lambda/api/gateway_integration"

  gateway_integration = {
    rest_api_id = module.restapi.restapi_id
    resource_id = module.gateway_method.gateway_method_resourceid
    http_method = module.gateway_method.http_method
    integration_http_method = "POST"
    type                    = "AWS_PROXY"   
    uri                     = module.lambda_function_in_vpc.lambda_invoke_url
  }

}

module "gateway_method_response" {
  source = "../../Modules/lambda/api/gateway_response"

  method_response = {
   rest_api_id = module.restapi.restapi_id
   resource_id = module.gateway_method.gateway_method_resourceid
   http_method = module.gateway_method.http_method
  }

}


module "gateway_deployment" {
  source = "../../Modules/lambda/api/api_dep"

  api_dep = {
   rest_api_id = module.restapi.restapi_id
  }
  depends_on = [ module.gateway_integration]
}

module "lambda_permission" {
  source = "../../Modules/lambda/api/api_permission" 
        lambda_permission = {
            function_name = module.lambda_function_in_vpc.lambda_name
            source_arn = "${module.restapi.executionarn}/*/*/${module.gateway_resource.pathpart}"
          }
        
}
