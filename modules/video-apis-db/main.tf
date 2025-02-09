#============================================================================
# Authors: Thiago, Vitor, Rafael
# Description: Creates Database Infrastructure for Video APIs service
#============================================================================
resource "aws_dynamodb_table" "aws_dynamodb_table_video_devices_api_video_table" {
  name                          = var.video_dynamodb_table_name
  billing_mode                  = var.video_dynamodb_table_billing_mode 
  deletion_protection_enabled   = var.video_dynamodb_table_deletion_protection_enabled
  hash_key                      = "id"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "userId"
    type = "S"
  }

  global_secondary_index {
    name               = "user_id_index"
    hash_key           = "userId"
    projection_type    = "KEYS_ONLY"
  }

  tags = {
    Name = var.video_dynamodb_table_name
  }
}

########################################################################
# Outputs
########################################################################
output "aws_dynamodb_table_video_devices_api_video_table_arn" {
  value = aws_dynamodb_table.aws_dynamodb_table_video_devices_api_video_table.arn
}