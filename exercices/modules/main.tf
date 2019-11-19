data "aws_vpc" "training" {
  cidr_block = "10.55.0.0/16"
}

resource "aws_security_group" "allow_all_1" {
  name_prefix        = "allow_all_1"
  description = "Allow all inbound traffic"
  vpc_id      = "${data.aws_vpc.training.id}"

  tags = {
    Name = "allow_all_1"
  }
}

resource "aws_security_group_rule" "allow_1_all_in" {

  type        = "ingress"
  from_port   = 0
  to_port     = 0
  protocol    = "all"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.allow_all_1.id}"
}

resource "aws_security_group_rule" "allow_1_all_out" {
  type        = "egress"
  from_port   = 0
  to_port     = 0
  protocol    = "all"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.allow_all_1.id}"
}

resource "aws_security_group" "allow_all_2" {
  name_prefix        = "allow_all_2"
  description = "Allow all inbound traffic"
  vpc_id      = "${data.aws_vpc.training.id}"

  tags = {
    Name = "allow_all_2"
  }
}

resource "aws_security_group_rule" "allow_all_2_in" {

  type        = "ingress"
  from_port   = 0
  to_port     = 0
  protocol    = "all"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.allow_all_2.id}"
}

resource "aws_security_group_rule" "allow_all_2_out" {
  type        = "egress"
  from_port   = 0
  to_port     = 0
  protocol    = "all"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.allow_all_2.id}"
}
