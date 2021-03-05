
variable "iam_policy_attach" {
  type = object({
    role = string
    policy_arn = string
    
  })
  
}
