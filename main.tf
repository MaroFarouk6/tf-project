terraform {
  required_providers {
    aws = {

      source  = "hashicorp/aws"
      version = "6.73.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
  # Configuration options
}
resource "aws_s3_bucket" "tf-s3-bucket" {
  bucket = s3_bucket_name

  tags = {
    Name        = "tf-s3-bucket"
    Environment = "devops"
  }
}
