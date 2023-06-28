data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "instances" {
  for_each = var.instances
  ami                    = "ami-03265a0778a880afb"
  instance_type           = each.value["type"]
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = each.value["name"]
  }

}

variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      instance_type = "t3.micro"
    }
    user = {
      name = "user"
      instance_type = "t3.small"
    }
  }
}