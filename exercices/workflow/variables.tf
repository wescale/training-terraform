variable "user" {
  type = map(string)
  default = {
    mail="lilian.deloche@wescale.fr"
    name="Lilian Deloche"
  }
}

variable "gitlab_token" {
  type = string
}
