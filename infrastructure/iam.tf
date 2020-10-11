data "aws_iam_policy_document" "public-read-get-object" {
  statement {
    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.origin_access_identity.iam_arn]
    }
    sid     = "PublicReadGetObjectFromCloudfront"
    actions = ["s3:GetObject"]
    resources = [
      "arn:aws:s3:::${var.dns_domain}/*",
    ]
  }
}
