terraform {

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }

  }

  required_version = ">= 1.2.0"
}

#configure provider

provider "aws" {
  region  = "us-east-2"
  profile = "default"
}

module "module_vpc" {

  source = "./modules/vpc"
  vpc_cidr = "192.168.0.0/16"
  tenancy = "default"
  subnet_cidr_public_1 = "192.168.1.0/24"
  vpc_id = module.module_vpc.vpc_id

}

module "module_ec2" {


    source = "./modules/ec2"
    instance_key_name = "prometheus_key"
    instance_ami = "ami-0fa49cc9dc8d62c84"
    instance_type = "t2.micro"
    instance_tag = "ExampleAppServerInstance"
    subnet_id = module.module_vpc.subnet_cidr_public_1

}

# resource "aws_instance" "app_server" {

#   ami = "ami-0fa49cc9dc8d62c84"

#   instance_type = "t2.micro"

#   availability_zone = "us-east-2a"

#   key_name   = "prometheus_key"

#   tenancy = "default"

#   tags = {
#     Name = var.instance_name
#   }

# }