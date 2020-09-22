variable "aws_region" {
  description = "AWS region where ressources must be created. Will affect billing and availability."
  type        = string
  default     = "eu-central-1" // Frankfurt.
}
