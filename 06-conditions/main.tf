variable "instance_type" {}

resource "aws_instance" "test" {
  ami = "ami-03265a0778a880afb"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
}

variable "create_instance" {}

resource "aws_instance" "hyder" {
  count= tobool(var.create_instance) ? 1 : 0
  ami = "ami-03265a0778a880afb"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type
}
