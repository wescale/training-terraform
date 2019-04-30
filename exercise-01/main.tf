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

/**
* Data source pour brnacher la route table dans le nouveau subnet
*/
data "aws_route_table" "default" {
  vpc_id = "${data.aws_vpc.training.id}"
  filter {
    name = "tag:Name"
    values = ["training-0"]
  }
}

resource "aws_route_table_association" "public" {
  route_table_id = "${data.aws_route_table.default.id}"
  subnet_id      = "${aws_subnet.public_subnet.id}"
}
