provider "aws" {}

resource "aws_vpc" "training" {
  cidr_block = "10.55.0.0/16"

  enable_dns_hostnames = true

  tags {
    Name = "Training"
  }
}

