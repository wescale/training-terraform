terraform {
  required_providers {
    gitlab={
      source="gitlabhq/gitlab"
    }
  }
}
resource "gitlab_group" "trainees" {
  name = local.grp-name
  path = local.grp-name
}

locals {
  grp-name="terraform-trainees"
}
provider "gitlab" {
  base_url = "http://127.0.0.1:8080"
  token = var.gitlab_token
}

variable "gitlab_token" {
  type = string
}
output "grp_id" {
  value = gitlab_group.trainees.id
}
