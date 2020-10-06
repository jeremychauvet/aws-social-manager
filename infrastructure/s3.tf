resource "aws_s3_bucket" "social-manager-front" {
  bucket = "aws-social-manager"
  acl    = "public-read"
  policy = file("${path.module}/policies/s3.json")

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = var.tags
}
