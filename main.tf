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
  bucket = var.s3_bucket_name

  tags = {
    Name        = "tf-s3-bucket"
    Environment = "devops"
  }
}

resource "aws_instance" "tf-ec2" {
  ami           = "ami-0c30b7300f5fb34cd" 
  instance_type = "t3.micro"
  # subnet_id     = aws_subnet.tf-subnet-1.id

  tags = {
    Name        = "tf-ec2"
    Environment = "devops"
  }
}
