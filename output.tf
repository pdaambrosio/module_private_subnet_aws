output "private_subnet_id" {
  description = "The ID of the VPC"
  value = aws_subnet.private_subnet.id
}
