resource "aws_vpc" "vpc_main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.tenancy
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id = var.vpc_id  
  cidr_block = var.subnet_cidr_public_1

  tags = {
    Name = "Main"
  }
}