terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

output "current_workspace" {
  value = "Hi I'm currently in workspace ${terraform.workspace}"
}

resource "random_pet" "peoples" {
  count = terraform.workspace == "large" ? 20:5
  length = 2
  separator = " "
}

output "peoples" {
  value = join(", ",random_pet.peoples.*.id)
}
