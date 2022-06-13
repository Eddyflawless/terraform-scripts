variable "instance_name" {
  type        = string
  description = "Value of the name tag for this instance"
  default     = "ExampleAppServerInstance"
}

variable "image_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
}


variable "availability_zone_names" {
  type    = list(string)
  default = ["us-east-2a"]
}