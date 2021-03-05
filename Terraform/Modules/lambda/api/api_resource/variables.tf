variable "rest_resource" {
  type = object({
    path_part = string
    parent_id = string
    rest_api_id = string
  })
}
