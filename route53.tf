resource "aws_route53_record" "www" {
  zone_id = "your zone ID"
  name    = "www.example.com"
  type    = "A"
  ttl     = "30"
  records = ["${aws_instance.web.public_ip}"]
}
