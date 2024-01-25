terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
<<<<<<< HEAD
  region  = "us-west-1"
  profile = "rocinante"
=======
  region  = "us-west-2"
  #profile = "profile"
>>>>>>> 8bd97213be4f7beef995f3e578f3f13e4c8d8542
}

resource "aws_instance" "app_server" {
  ami                    = var.ami
  instance_type          = var.ec2_instance_type
  vpc_security_group_ids = [var.vpc_security_group]
  subnet_id              = var.subnet-id
  key_name               = var.keyname

  tags = {
    Name = "DockerBuild"
    Sys  = "PersonalComp"
  }
}
