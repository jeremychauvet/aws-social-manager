variable "aws_region" {
  description = "AWS region where ressources must be created. Will affect billing and availability."
  type        = string
  default     = "eu-central-1" // Frankfurt.
}

variable "dns_domain" {
  description = "DNS FQDN used for this project in main area in Route53."
  type        = string
}

variable "front_allowed_ips" {
  description = "Ip addresses allow to access social manager front."
  type        = list
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default = {
    App         = "aws-social-manager"
    Environment = "dev"
  }
}
