variable "keyname" {
  type = string
}

resource "tls_private_key" "key" {
  algorithm = "RSA"
  rsa_bits = 4096
}
resource "local_file" "keyf" {
  filename = "${path.root}/${var.keyname}"
  content = tls_private_key.key.private_key_pem
}
