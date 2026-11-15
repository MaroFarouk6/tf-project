variable "s3_bucket_name" {
  type        = string
}

variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
}