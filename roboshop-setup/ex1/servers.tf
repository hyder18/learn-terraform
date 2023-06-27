resource "aws_instance" "frontend" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "ami-03265a0778a880afb"
  name    = "frontend-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "ami-03265a0778a880afb"
  name    = "mongodb-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}


resource "aws_instance" "catalogue" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "ami-03265a0778a880afb"
  name    = "catalogue-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "user" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "ami-03265a0778a880afb"
  name    = "user-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}


resource "aws_instance" "cart" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "ami-03265a0778a880afb"
  name    = "cart-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}


resource "aws_instance" "redis" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0587bddaf9ce3d6fb"]
  tags                   = {
    name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "ami-03265a0778a880afb"
  name    = "redis-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}


resource "aws_instance" "mysql" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "ami-03265a0778a880afb"
  name    = "mysql-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}


resource "aws_instance" "shipping" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "ami-03265a0778a880afb"
  name    = "shipping-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "dispatch" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "ami-03265a0778a880afb"
  name    = "dispatch-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}


resource "aws_instance" "payment" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "ami-03265a0778a880afb"
  name    = "payment-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}


resource "aws_instance" "rabbitmq" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0587bddaf9ce3d6fb"]
  tags = {
    name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "ami-03265a0778a880afb"
  name    = "rabbitmq-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
