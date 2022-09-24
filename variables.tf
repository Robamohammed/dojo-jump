variable "image_id" {
  type = string
  default = "ami-0022f774911c1d690"
  description = "This is image id for Ec2 instance"
}

variable "instance-type"{
  type = string
  default = "t2.micro"
  description = "variable for the instances type"
}
