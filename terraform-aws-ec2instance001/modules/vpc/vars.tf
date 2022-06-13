variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "vpc_id" {}

variable "tenancy" {
    type = string
    default = "dedicated"
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "subnet_cidr_public_1" {

    default = "10.0.1.0/24"

}

variable "subnet_cidr_public_2" {

    default = "10.0.2.0/24"
    
}

variable "subnet_cidr_private_1" {

    default = "10.0.3.0/24"
    
}

variable "subnet_cidr_private_2" {

    default = "10.0.4.0/24"
    
}