# Policy definition.
data "aws_iam_policy_document" "public-read-get-object" {
  statement {
    principals {
      type        = "AWS"
      identifiers = [aws_cloudfront_origin_access_identity.origin_access_identity.iam_arn]
    }
    sid     = "PublicReadGetObject"
    actions = ["s3:GetObject"]
    resources = [
      "arn:aws:s3:::${var.dns_domain}/*",
    ]
    # condition {
    #   test     = "IpAddress"
    #   variable = "aws:SourceIp"
    #   values   = var.front_allowed_ips
    # }
  }
}
