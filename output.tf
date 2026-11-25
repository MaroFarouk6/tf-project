output "ec2_private_ip" {
  value = aws_instance.tf-ec2.private_ip
  # using inline variable to provide a description for the output
}
