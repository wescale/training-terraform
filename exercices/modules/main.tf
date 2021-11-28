terraform {
  required_providers {
    tls = {
      source = "hashicorp/tls"
    }
    local={
      source = "hashicorp/local"
    }
  }
}

resource "tls_private_key" "key1" {
  algorithm = "RSA"
  rsa_bits = 4096
}
resource "local_file" "pk1" {
  filename = "pk1.pem"
  content = tls_private_key.key1.private_key_pem
}
resource "tls_private_key" "key2" {
  algorithm = "RSA"
  rsa_bits = 4096
}
resource "local_file" "pk2" {
  filename = "pk2.pem"
  content = tls_private_key.key2.private_key_pem
}
