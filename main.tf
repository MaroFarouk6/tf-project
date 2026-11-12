# module "s3-bucket" {
#     source  = "terraform-aws-modules/s3-bucket/aws"
#     version = "5.17.0"
# }

resource "aws_s3_bucket" "tf-S3-bucket" {
  bucket = "tf-S3-bucket"
  region = "us-east-1"
  
  tags = {
    Name        = "tf-S3-bucket"
    Environment = "DevOps"
  }
}
