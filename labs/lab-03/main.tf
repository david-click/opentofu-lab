terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.26"
    }
  }

  required_version = ">= 1.11.6" 
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "lab_03" {
  # This is a Debian 13 instance. 
  ami           = "ami-050352a65e954abb1"
  instance_type = "t3.micro"

  tags = {
    Name = "Lab-03"
  }
}
