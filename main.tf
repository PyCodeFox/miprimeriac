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

resource "aws_s3_bucket" "mi_cubo_de_prueba" {
  bucket        = "mi-primer-bucket-terraform-2026-rora" 
  force_destroy = true
}