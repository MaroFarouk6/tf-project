terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.73.0"
    }
  }
}

provider "aws" {
  access_key = "<access_key>"
  secret_key = "<secret_key>"
  # Configuration options
}
resource "aws_s3_bucket" "tf-S3-bucket" {
  bucket = "tf-S3-bucket"
  region = "us-east-1"
  tags = {
    Name        = "tf-S3-bucket"
    Environment = "DevOps"
  }
}
