resource "aws_route53_record" "roboshop" {
  count           = 4
  zone_id         = var.zone_id
  name            = "${var.instance_count[count.index]}.${var.domain_name}" # mongodb.bandarusuresh.in
  type            = "A"
  ttl             = 1
  records         = [aws_instance.terraform[count.index].private_ip]
  allow_overwrite = true
}