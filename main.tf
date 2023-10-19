terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.49.0"  # Use a suitable version
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
    "Name" = "Myec2Instance"
  }
}
