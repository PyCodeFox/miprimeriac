terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "red_de_prueba" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "mi-vpc-terraform"
  }
}