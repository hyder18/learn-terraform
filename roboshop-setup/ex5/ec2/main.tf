data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]

}

resource "aws_instance" "ec2" {
  ami = "ami-03265a0778a880afb"
  instance_type = var.instance_type
  vpc_security_group_ids = [var.sg_id]
  tags = {
    name = var.component
  }
}

variable "component" {}
variable "instance_type" {}
variable "sg_id" {}

output "private_ip" {
  value = aws_instance.ec2.private_ip
}