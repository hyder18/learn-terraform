data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]

}

resource "aws_instance" "ec2" {
  ami = "ami-03265a0778a880afb"
  instance_type = var.instance_type
  vpc_security_group_ids = [ var.sg_id]
  tags = {
    name = var.component
  }
}

resource "aws_route53_record" "record" {
  zone_id = "Z05481573J6LJA916DTHH"
  name    = "${var.component}-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}

variable "component" {}
variable "instance_type" {}
variable "sg_id" {}