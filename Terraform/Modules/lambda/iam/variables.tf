variable "iam_role" {
  type = object({
    name = string
    assume_role_policy = string
  })
  
}
