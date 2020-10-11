resource "aws_s3_bucket" "frontend" {
  bucket        = var.dns_domain
  acl           = "public-read"
  force_destroy = true

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = var.tags
}

# Attach policy to bucket.
resource "aws_s3_bucket_policy" "frontend_s3_policy" {
  bucket = aws_s3_bucket.frontend.id
  policy = data.aws_iam_policy_document.public-read-get-object.json
}

resource "aws_s3_bucket_public_access_block" "frontend_s3_access" {
  bucket              = aws_s3_bucket.frontend.id
  block_public_acls   = false
  block_public_policy = false
}
