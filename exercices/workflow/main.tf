terraform {
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
      version = "3.8.0"
    }
    random = {    source = "hashicorp/random"
      version = "3.1.0"}
  }
}
provider "gitlab" {
  base_url = "http://127.0.0.1:8080"
  token = var.gitlab_token
}

resource "gitlab_user" "student" {
  email    = var.user.mail
  name     = var.user.name
  username = replace(var.user.mail,"/@.*/","")
  password = random_password.user_password.result
}

resource "random_password" "user_password" {
  length = 10
  special = false
}
