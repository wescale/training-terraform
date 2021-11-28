data "aws_vpc" "training" {
  cidr_block = "10.55.0.0/16"
}

module "sg_1" {
  source = "./module_sg"
  vpc_id = data.aws_vpc.training.id
  name = "allow_all_1"
}

module "sg_2" {
  source = "./module_sg"
  vpc_id = data.aws_vpc.training.id
  name = "allow_all_2"
}
