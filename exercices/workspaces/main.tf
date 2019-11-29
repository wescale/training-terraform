provider "aws" {}

data "aws_vpc" "training" {
  cidr_block = "10.55.0.0/16"
}

resource "aws_security_group" "allow_all" {
  name_prefix = "tf-train"

  description = "Allow all inbound traffic"

  vpc_id      = data.aws_vpc.training.id

  tags = {
    Name = "exercise-06"
  }
}
