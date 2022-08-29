module "web-server-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.1.4"

  name                   = "webserver-${var.environment}"
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  subnet_id              = module.sameer-vpc.public_subnets[0]
  vpc_security_group_ids = [module.sameer-security-group.security_group_id]
  user_data              = file("${path.module}/p01-web-server-user-data.sh")
  tags                   = local.common_tags
}
