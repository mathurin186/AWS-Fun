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
  region  = "us-west-2"
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
