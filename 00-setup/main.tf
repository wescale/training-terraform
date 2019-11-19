provider "aws" {}

resource "aws_vpc" "training" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true

  tags = {
    Name = "Terraform Training"
  }
}

resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.training.id

  tags = {
    Name = "training"
  }
}

resource "aws_route_table" "default" {
  vpc_id = aws_vpc.training.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway.id
  }

  tags = {
    Name = "training"
  }
}

resource "aws_subnet" "public" {
  #
  # Utilisation de l'attribut 'count' pour créer plusieurs ressources identiques
  # Détails ici :
  #   https://www.terraform.io/docs/configuration/resources.html#count
  #
  count = length(data.aws_availability_zones.all.names)

  vpc_id = aws_vpc.training.id

  #
  # Utilisation de l'index de count pour attribuer une AZ différente à chacun des subnets créé.
  #
  availability_zone = data.aws_availability_zones.all.names[count.index]

  cidr_block = cidrsubnet(var.vpc_cidr, 8, count.index)

  tags = {
    Name = "training-${count.index}"
  }
}

resource "aws_route_table_association" "public" {
  count          = length(data.aws_availability_zones.all.names)
  route_table_id = aws_route_table.default.id
  subnet_id      = element(aws_subnet.public.*.id, count.index)
}

resource "aws_s3_bucket" "tfstates" {
  bucket = "training-tfstates"
}

#terraform {
#  backend "s3" {
#    bucket = "training-tfstates"
#    key = "PUT_YOUR_NAME_HERE/terraform.tfstate"
#  }
#}
