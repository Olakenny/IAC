terraform {
  required_version = "~>1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }
  backend "s3" {
    bucket = "ireignht"
    key = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}