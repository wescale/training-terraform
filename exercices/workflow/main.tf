terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
}
provider "random" {}

resource "random_pet" "people" {
  count = var.population
  length = 2
  separator = " "
}

resource "random_pet" "pet" {
  length = 1
  count = var.population
}
resource "local_file" "population" {
  filename = "../hcl-1/people.json"
  content = jsonencode(random_pet.people.*.id)
}
