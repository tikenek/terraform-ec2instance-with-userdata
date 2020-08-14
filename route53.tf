resource "aws_route53_record" "www" {
  zone_id = "Z06230571EBE8LVQU15D2"
  name    = "www.avtagro.com"
  type    = "A"
  ttl     = "30"
  records = ["${aws_instance.web.public_ip}"]
}
