# Déclaration des providers
terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
    }
    local = {
      source  = "hashicorp/local"
    }
  }
}

# Déclaration des ressources
resource "random_pet" "people" {
  count = var.population

  length    = 2
  separator = " "
}

resource "random_pet" "pet" {
  count = var.population

  length = 1
}

resource "local_file" "people" {
  filename = "../data/people.json"
  content  = jsonencode(random_pet.people.*.id)
}
