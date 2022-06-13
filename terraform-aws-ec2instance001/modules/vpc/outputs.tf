output "vpc_id" {
  value = aws_vpc.vpc_main.id
}

output "subnet_cidr_public_1" {
  
  value = aws_subnet.public_subnet_1.id
}