variable "ami" {
     type = string
     default = "ami-0a1a70369f0fce06a"
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
     default = "sg-03853dc86be00b9ce"
}

variable "subnet-id" {
     type = string
     default = "subnet-61774006"
}

variable "keyname" {
     type = string
     default = "sysdig-comp"
}