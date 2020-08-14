resource "aws_key_pair" "class" {
  key_name   = "bastion-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
