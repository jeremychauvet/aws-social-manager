resource "aws_acm_certificate" "cert" {
  domain_name       = var.dns_domain
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }

  tags = var.tags
}
