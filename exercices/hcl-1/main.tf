resource "aws_security_group" "allow_all" {
  name_prefix = "tf-train"

  description = "WARN - Too Open"
  vpc_id      = data.aws_vpc.training.id

  tags = {
    Name = var.security_group_name
  }
}
