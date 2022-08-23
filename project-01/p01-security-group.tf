module "sameer-security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.11.0"

  name        = "sameer-sg"
  description = "SSH and HTTP open to world"
  vpc_id      = module.sameer-vpc.vpc_id

  # Ingress Rules
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  egress_rules = ["all-all"]

  tags = local.common_tags
}

