module "module_vpc" {

  source = "../modules/vpc"
  vpc_cidr = "192.168.0.0/16"
  tenancy = "default"
  subnet_cidr_public_1 = "192.168.1.0/24"
  vpc_id = module.module_vpc.vpc_id

}

module "my_ec2" {

  source = "../modules/ec2"
  instance_key_name = "prometheus_key"
  instance_ami = "ami-0fa49cc9dc8d62c84"
  instance_type = "t2.micro"
  subnet_id = module.module_vpc.subnet_cidr_public_1


}