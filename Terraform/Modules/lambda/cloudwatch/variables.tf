variable "cloud_watch_log" {
  type = object({
    name = string
    retention_in_days = number
  })
  
}