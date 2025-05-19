provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c1ac8a41498c1a9c"  # ✅ Ubuntu 22.04 LTS AMI for eu-north-1
  instance_type = "t3.micro"

  tags = {
    Name = "TerraformUbuntu"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Or use 6.0 if available stable
    }
  }
}