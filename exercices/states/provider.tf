terraform {
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
    }
  }
}
provider "gitlab" {
  base_url = "http://127.0.0.1:8080"
  token    = var.gitlab_token
}

variable "gitlab_token" {
  type = string
}
