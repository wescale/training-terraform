provider "aws" {}

terraform {
  backend "s3" {
    key = "lde/terraform.tfstate"
    bucket = "training-tfstates"
  }
}

data "terraform_remote_state" "setup_state" {
  backend = "s3"
  config  = {
    bucket = "training-tfstates"
    key    = "setup/terraform.tfstate"
  }
}

data "aws_ami" "ami_instance" {
  owners = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  most_recent = true
}

resource "aws_key_pair" "key1" {
  public_key = file(var.key_path)
}


resource "aws_security_group" "sg_group" {
  vpc_id = data.terraform_remote_state.setup_state.outputs.vpc_id
  ingress {
    from_port = 0
    protocol  = -1
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    protocol  = -1
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "test_instance" {
  count = 3
  ami           = data.aws_ami.ami_instance.id
  instance_type = "t2.micro"
  key_name = aws_key_pair.key1.key_name
  user_data = <<EOF
#cloud-config
runcmd:
  - apt update
  - apt install apache2 -y
  - service start apache2
EOF
  vpc_security_group_ids = [aws_security_group.sg_group.id]
  subnet_id =local.subnet_list[count.index % length(local.subnet_list)]
}

locals {
  subnet_list=data.terraform_remote_state.setup_state.outputs.subnet_list
}
