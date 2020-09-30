resource "aws_dynamodb_table" "social-manager-database" {
  name           = "social-manager"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "UserId"

  attribute {
    name = "UserId"
    type = "S"
  }

  tags = {
    Component   = "social-manager"
    Environment = "dev"
    CreatedBy   = "Jeremy Chauvet"
  }
}
