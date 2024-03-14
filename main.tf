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
  region = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-013168dc3850ef002"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Prac1"
  }
}

