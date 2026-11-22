resource "aws_vpc" "tf-vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name        = "tf-vpc"
    Environment = "devops"
  }
  
}

resource "aws_subnet" "tf-subnet-1" {
  vpc_id            = aws_vpc.tf-vpc.id
  cidr_block        = "10.0.0.0/24"
  depends_on        = [aws_s3_bucket.tf-s3-bucket]
}

resource "aws_subnet" "tf-subnet-2" {
  vpc_id            = aws_vpc.tf-vpc.id
  # Valid CIDR block for the second subnet
    cidr_block        = "10.0.1.0/24"
  depends_on        = [aws_s3_bucket.tf-s3-bucket]
}
