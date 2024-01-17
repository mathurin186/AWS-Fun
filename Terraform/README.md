# Terraform Fun

Simple project to help you get started with Terraform with AWS. The file included above will help you get started spinning up the environments you need for only WHEN you need them. IaC (Infrastructure as Code) helps with cost as it will deploy the specified environments you need at the hit of a command.

The Terraform files above are simple to populate. Ensure to populate the variables file with information from your AWS environment. 

This project is specifically for those who wish to develop more with Docker. Working in an AWS hosted EC2 instance for Docker development will save your computer space. A few Docker images aren't going to be much for storage but the images begin to pile on. 

## Getting Started
Here are the components you will need from AWS:
*  [ami](https://docs.aws.amazon.com/toolkit-for-visual-studio/latest/user-guide/tkv-create-ami-from-instance.html)
*  [instance_type](https://aws.amazon.com/ec2/instance-types/) 
*  [vpc_security_group_ids](https://docs.aws.amazon.com/managedservices/latest/userguide/find-SGs.html) 
*  [subnet_id](https://docs.aws.amazon.com/managedservices/latest/userguide/find-subnet.html) 
*  [key_name](https://docs.aws.amazon.com/IAM/latest/UserGuide/security-creds.html)  <-- This may seem confusing, but you need a security key in order to SSH into the running EC2 instance.

Ensure that you populate the Variables.tf file with all of the information above. Do not use the main.tf file with secret information. 

Note: You can edit and push your terraform main.tf and outputs.tf files to your github repo, but don't push the variables as it will container secret information.

![](https://github.com/mathurin186/AWS-Fun/blob/main/Terraform/images/bar.png | width=100 height=300)

## Commands to run when ready
```
terraform init && terraform apply
```

