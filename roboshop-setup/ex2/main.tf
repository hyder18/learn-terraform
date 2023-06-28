data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "frontend" {
  count = length(var.instances)
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]

}

variable "instances" {
  default = [ "cart", "catalogue",  "shipping", "payment", "rabbitmq"]
}

output "public-ip" {
  value = aws_instance.frontend.*.public_ip
}