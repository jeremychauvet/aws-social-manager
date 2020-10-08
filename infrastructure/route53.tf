resource "aws_route53_zone" "main" {
  name = var.dns_domain
}

resource "aws_route53_record" "root_domain" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "aws-social-manager.${var.dns_domain}"
  type    = "A"

  # alias {
  #   name = "${aws_cloudfront_distribution.cdn.domain_name}"
  #   zone_id = "${aws_cloudfront_distribution.cdn.hosted_zone_id}"
  #   evaluate_target_health = false
  # }

  alias {
    zone_id                = aws_s3_bucket.frontend.hosted_zone_id
    name                   = aws_s3_bucket.frontend.website_domain
    evaluate_target_health = false
  }
}
