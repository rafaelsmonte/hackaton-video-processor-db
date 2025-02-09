variable "video_dynamodb_table_name" {
  description = "The name of the DynamoDB table for video data."
  type        = string
}

variable "video_dynamodb_table_billing_mode" {
  description = "The billing mode for the video DynamoDB table (e.g., PAY_PER_REQUEST, PROVISIONED)."
  type        = string
}

variable "video_dynamodb_table_deletion_protection_enabled" {
  description = "Specifies whether deletion protection is enabled for the video DynamoDB table."
  type        = bool
}
