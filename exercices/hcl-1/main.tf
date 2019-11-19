/**
 * Datasource pour connaitre l'id de la dernière Debian Stretch
 */
data "aws_ami" "debian" {
  most_recent = true

  filter {
    name   = "name"
    values = ["debian-stretch-hvm-x86_64-gp2*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["379101102735"] # Debian Project
}

data "aws_vpc" "training" {
  cidr_block = "10.55.0.0/16"
}

data "aws_subnet" "training" {
  vpc_id = data.aws_vpc.training.id
  availability_zone = "eu-west-1a"
}

resource "aws_key_pair" "keypair" {
  key_name_prefix = "training-"
  public_key      = file(var.public_key_path)
}

resource "aws_security_group" "allow_all" {
  name_prefix = "tf-train"

  description = "Allow all inbound traffic"
  vpc_id      = data.aws_vpc.training.id

  tags = {
    Name = var.security_group_name
  }
}
