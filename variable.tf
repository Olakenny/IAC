variable "region" {
  type    = string
  default = "us-west-1"
}

# variable "instance_ami" {
#   type    = string
#   default = data.aws_ami.amazonlinux
# }

variable "key_pair" {
  type    = string
  default = "tf"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
  #making the variable required
}

variable "ingress_rules" {
  type    = list(number)
  default = [80, 443, 8080, 22]
}

variable "egress_rules" {
  type    = list(number)
  default = [80, 443, 8080, 22, 53, 27017]
}
