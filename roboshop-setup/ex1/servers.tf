resource "aws_instance" "frontend" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "frontend"
  }
}

resource "aws_instance" "mongodb" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "mongodb"
  }
}

resource "aws_instance" "catalogue" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "catalogue"
  }
}
resource "aws_instance" "user" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "user"
  }
}

resource "aws_instance" "cart" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "cart"
  }
}

resource "aws_instance" "redis" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0587bddaf9ce3d6fb"]
  tags                   = {
    name = "test"
  }
}

resource "aws_instance" "mysql" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "mysql"
  }
}

resource "aws_instance" "shipping" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "rabbitmq"
  }
}

resource "aws_instance" "dispatch" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "dispatch"
  }
}

resource "aws_instance" "payment" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "payment"
  }
}

resource "aws_instance" "rabbitmq" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "rabbitmq"
  }
}