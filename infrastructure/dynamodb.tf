resource "aws_dynamodb_table" "social-manager-db-user-followed" {
  name           = "social-manager-user-followed"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "TwitterId"

  attribute {
    name = "TwitterId"
    type = "N"
  }

  tags = var.tags
}

resource "aws_dynamodb_table" "social-manager-db-user-to-follow" {
  name           = "social-manager-user-to-follow"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "TwitterId"

  attribute {
    name = "TwitterId"
    type = "N"
  }

  tags = var.tags
}
