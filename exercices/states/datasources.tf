data "aws_vpc" "training" {
  cidr_block = "10.55.0.0/16"
}

variable "security_group_name" {
  default = "instance-training"
}
