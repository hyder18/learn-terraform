data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "instances" {
  for_each = var.instances
  ami                    = "ami-03265a0778a880afb"
  instance_type           = each.value["type"]
  vpc_security_group_ids = [ "sg-022e0149cf38b3bd0"]
  tags = {
    name = each.value["name"]
  }

}

variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t3.micro"
    }
    user = {
      name = "user"
      type = "t3.small"
    }
  }
}

output "ec2" {
  value = [for k, v in aws_instance.instances : "${k} - ${v.public_ip}"]
}