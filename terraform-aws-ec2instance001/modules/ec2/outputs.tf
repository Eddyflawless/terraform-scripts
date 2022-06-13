output "instance_id" {

  description = "ID of ec2 instance"

  value = aws_instance.app_server.id
}

output "instance_public_ip" {

  description = "Public ip address of ec2 instance"

  value = aws_instance.app_server.public_ip
}

output "instance_key_name" {

  description = "Key pair that can help you ssh into the instance"

  value = aws_instance.app_server.key_name
}
