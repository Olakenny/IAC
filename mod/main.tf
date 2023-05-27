provider "aws" {
  region  = "us-west-1"
  profile = "default"
}

module "ec2module" {
  source        = "./ec2"
  instance_name = "demo-1"
}

output "mod-output" {
  value = module.ec2module.instance-id
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.2"
}

output "vpc-out" {
  value = module.vpc.vpc_id
}