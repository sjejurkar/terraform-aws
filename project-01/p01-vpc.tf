module "sameer-vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  version         = "3.14.2"
  name            = "${var.vpc_name}-${var.environment}"
  cidr            = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets

  enable_dns_hostnames = true
  enable_dns_support   = true

  public_subnet_tags = {
    Type = "public-subnets"
  }

  private_subnet_tags = {
    Type = "private-subnets"
  }

  tags = local.common_tags
}

