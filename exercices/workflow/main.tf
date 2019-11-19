provider "aws" {}

data "aws_vpc" "training" {
  cidr_block = "10.55.0.0/16"
}

module "simple-vpc" {
  source  = "lde/simple-vpc/aws"
  version = "0.6.0"
}
