resource "aws_instance" "app_server" {

    ami = var.instance_ami

    instance_type = var.instance_type

    key_name   = var.instance_key_name

    subnet_id = var.subnet_id

    availability_zone = "us-east-2a"

    tags = {
        Name : var.instance_tag
    }
  
}