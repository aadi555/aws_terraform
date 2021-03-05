variable lambda_settings {
  type = object({
    function_name = string
    description = string
    s3_bucket = string
    s3_key = string
    role = string
    
  })
  
}

variable "subnet_ids" {
  type = string
    
  }

variable "security_group_ids" {
  type = string
}

