provider "aws" {}

data "aws_vpc" "training" {
  cidr_block = "10.55.0.0/16"
}

variable "security_group_name" {
  default = "instance-training"
}

# TODO: Copier ici le code du security group de l'exercice 2.
#   lancer un plan
#   utiliser terraform mv pour déplacer la ressource 'aws_security_group.allow_all' du state de l'exercice 2 à un
#   fichier terraform.tfstate dans ce répertoire
#   refaire un terraform plan
