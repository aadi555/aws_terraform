resource "aws_cloudwatch_log_group" "crawford" {
  
  name              = var.cloud_watch_log.name
  retention_in_days = var.cloud_watch_log.retention_in_days
}