terraform {
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.10.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-067c21fb1979f0b27"
  instance_type = "t2.micro"
  tags = {
    Name = "MyEC2Instance"
  }
}
