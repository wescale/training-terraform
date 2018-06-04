variable "id_by_region" {
  type = "map"

  default {
    eu-west-1 = "123"
    eu-west-2 = "456"
    eu-west-3 = "789"
  }
}

variable "colors" {
  type = "list"

  default = [
    "blue",
    "green",
    "red",
    "rose",
    "grey",
  ]
}

variable "raw_sizes" {
  type    = "string"
  default = "small,medium,large"
}
