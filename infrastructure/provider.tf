terraform {
  backend "s3" {
    bucket         = "aws-social-manager-tfstate" // Unique name, you must change this for you.
    key            = "terraform.tfstate"
    dynamodb_table = "aws-social-manager-tfstate-locks"
    region         = "eu-central-1"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws_region
  version = "~> 2.67"
}

provider "aws" {
  version = "~> 2.67"
  region = "us-east-1"
  alias = "us-east-1"
}
