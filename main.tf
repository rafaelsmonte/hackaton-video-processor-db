#============================================================================
# Authors: Thiago, Vitor, Rafael
# Description: Terraform manifest for hackaton database creation
#============================================================================
terraform {
  backend "s3" {
    bucket = "hackaton-video-processor-infra-terraform-state"
    key    = "rds/terraform.tfstate"
    region = "us-east-1"
    profile = "default"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "video-apis-db" {
  source = "./modules/video-apis-db"

  video_dynamodb_table_name                        = var.video_dynamodb_table_name
  video_dynamodb_table_billing_mode                = var.video_dynamodb_table_billing_mode
  video_dynamodb_table_deletion_protection_enabled = var.video_dynamodb_table_deletion_protection_enabled
}

########################################################################
# Outputs
########################################################################
output "aws_dynamodb_table_video_devices_api_video_table_arn" {
  value = module.video-apis-db.aws_dynamodb_table_video_devices_api_video_table_arn
}