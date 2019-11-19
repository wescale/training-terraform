module "simple-vpc" {
  source  = "lde/simple-vpc/aws"
  version = "0.6.0"

  cidr_block = var.vpc_cidr

  tags = {
    Name = "vpc-${var.student}"
  }
}
