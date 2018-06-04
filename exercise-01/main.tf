provider "aws" {}

data "aws_vpc" "training" {
  cidr_block = "10.55.0.0/16"
}

resource "aws_subnet" "public_subnet" {
  vpc_id            = "${data.aws_vpc.training.id}"
  cidr_block        = "${var.subnet_cidr}"
  availability_zone = "eu-west-1a"

  tags {
    Name        = "training-${var.student}"
    Description = "subnet for terraform training"
  }
}
