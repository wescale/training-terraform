variable "instance_type" {
  type        = "string"
  default     = "t2.micro"
  description = "EC2 instance type"
}

variable "public_key_path" {
  type        = "string"
  description = "Public Key for SSH connexion"
  default     = "../../training.key.pub"
}

variable "security_group_name" {
  default = "instance-training"
}

variable "subnet_id" {
  type = "string"
}
