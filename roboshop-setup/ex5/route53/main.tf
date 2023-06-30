resource "aws_route53_record" "record" {
  zone_id = "Z05481573J6LJA916DTHH"
  name    = "${var.component}-dev.hyder71.online"
  type    = "A"
  ttl     = 30
  records = var.private_ip
}

variable "private_ip" {}
variable "component" {}