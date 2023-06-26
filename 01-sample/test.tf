resource "aws_instance" "ec2" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "test"
  }
}