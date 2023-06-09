resource "aws_instance" "frontend" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-022e0149cf38b3bd0"]
  tags = {
    name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z05481573J6LJA916DTHH"
  name    = "frontend-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-022e0149cf38b3bd0"]
  tags = {
    name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z05481573J6LJA916DTHH"
  name    = "mongodb-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}


resource "aws_instance" "catalogue" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-022e0149cf38b3bd0"]
  tags = {
    name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z05481573J6LJA916DTHH"
  name    = "catalogue-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "user" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-022e0149cf38b3bd0"]
  tags = {
    name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z05481573J6LJA916DTHH"
  name    = "user-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}


resource "aws_instance" "cart" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-022e0149cf38b3bd0"]
  tags = {
    name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z05481573J6LJA916DTHH"
  name    = "cart-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}


resource "aws_instance" "redis" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-022e0149cf38b3bd0"]
  tags                   = {
    name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z05481573J6LJA916DTHH"
  name    = "redis-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}


resource "aws_instance" "mysql" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-022e0149cf38b3bd0"]
  tags = {
    name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z05481573J6LJA916DTHH"
  name    = "mysql-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}


resource "aws_instance" "shipping" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-022e0149cf38b3bd0"]
  tags = {
    name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z05481573J6LJA916DTHH"
  name    = "shipping-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "dispatch" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-022e0149cf38b3bd0"]
  tags = {
    name = "dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z05481573J6LJA916DTHH"
  name    = "dispatch-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}


resource "aws_instance" "payment" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-022e0149cf38b3bd0"]
  tags = {
    name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z05481573J6LJA916DTHH"
  name    = "payment-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}


resource "aws_instance" "rabbitmq" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-022e0149cf38b3bd0"]
  tags = {
    name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z05481573J6LJA916DTHH"
  name    = "rabbitmq-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
