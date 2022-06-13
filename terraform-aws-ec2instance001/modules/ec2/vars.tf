variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "instance_key_name" {
    type = string
}

variable "instance_tag" {
    type = string
    description = "Value of the name tag for this instance"
}

variable "subnet_id" {
    type = string
}

variable "instance_ami" {
    type = string
}
