provider "aws" {}
provider "http" {}

module "simple-vpc" {
  source  = "lde/simple-vpc/aws"
  version = "0.6.0"
}
