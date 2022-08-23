data "aws_key_pair" "personal" {
  key_name           = var.instance_keypair
  include_public_key = true
}