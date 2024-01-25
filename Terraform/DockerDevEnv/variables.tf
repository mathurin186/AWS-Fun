variable "ami" {
     type = string
     default = "ami-1234"
}

variable "profile" {
     type = string
     default = "profile_of_your_awscli"
}

variable "ec2_instance_type" {
     type = string
     default = "t2.micro"
}
variable "number_of_instances" {
     type = number
     default = 1
}
variable "vpc_security_group" {
     type = string
     default = "sg-01234"
}
variable "subnet-id" {
     type = string
     default = "subnet-61234"
}
variable "keyname" {
     type = string
     default = "my-key"

