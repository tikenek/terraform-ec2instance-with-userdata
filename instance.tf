resource "aws_instance" "web" {
  ami                         = "ami-067f5c3d5a99edc80"
  instance_type               = "t2.large"
  associate_public_ip_address = "true"
  key_name                    = "${aws_key_pair.class.key_name}"
  user_data                   = "${file("userdata.sh")}"
  vpc_security_group_ids      = ["${aws_security_group.allow_ssh.id}"]
  vpc_security_group_ids      = ["${aws_security_group.allow_https_http.id}"]
  availability_zone           = "us-west-2c"
}
