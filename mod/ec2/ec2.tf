resource "aws_instance" "webserver" {
  ami                    = data.aws_ami.amazonlinux.id
  instance_type          = var.instance_type
  tags = {
    Name = var.instance_name
  }
}
