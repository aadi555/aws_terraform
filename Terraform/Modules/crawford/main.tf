provider "aws" {
  region     = var.region
}
terraform {
  backend "s3" {
    bucket = "testpipelineec2"
    key    = "tf/terraform.tfstate"
    region = var.region
  }
}
