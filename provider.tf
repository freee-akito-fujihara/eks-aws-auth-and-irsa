provider "aws" {
  region  = var.aws_region
  default_tags {
    tags = {
      Name = "aws-auth-and-irsa"
      tag  = "aws-auth-and-irsa"
    }
  }
}

terraform {
  required_version = "~> 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.12"
    }
  }
}
