# Author - Harshal Gujar
# This file is for creation of ec2 instance 

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.88.0"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
  access_key = "access_key"
  secret_key = "secret_key"
}

resource "aws_instance" "web" {
  ami           = 04b4f1a9cf54c11d0
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_ec2"
  }
}
