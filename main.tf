terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.10.0"
        }
        }
    }
    provider "aws" {
        region = "us-east-1"
        access_key = "AKIA32BP4XBTFMFY2VFA"
        secret_key = "ZhUApSJnRyARb9zX5azeN0I5nBvh9khBdNhtRJDT"
    }
    resource "aws_instance" "example" {
  ami           = "ami-03eb6185d756497f8" 
  instance_type = "t2.micro"
  tags = {
    "Name" = "Myec2Instance"
  }
    }
