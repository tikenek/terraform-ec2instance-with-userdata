output "IP" {
  value       = "${aws_instance.web.public_ip}"
}

output "ID" {
  value       = "${aws_instance.web.id}"
}

output "PIP" {
  value       = "${aws_instance.web.private_ip}"
}

output "KEY" {
  value       = "${aws_instance.web.key_name}"
}


output "ARN" {
  value       = "${aws_instance.web.arn}"
}
