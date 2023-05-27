provider "aws" {
  region  = var.region
  profile = "default"
}

resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazonlinux.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_traffic.id]
  key_name               = var.key_pair
  tags = {
    Name = var.instance_name
  }
}


