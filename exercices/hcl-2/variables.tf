variable "id_by_region" {
  type = map(number)
  default = {
    eu-west-1 = 123
    eu-west-2 = 456
    eu-west-3 = 789
  }
}

variable "colors" {
  type = list(string)
  default = [
    "blue",
    "green",
    "red",
    "rose",
    "grey",
  ]
}

variable "raw_sizes" {
  type    = string
  default = "small,medium,large"
}
variable "allowed_ips" {
  type = list(string)
  default = ["82.242.176.98"]
}
