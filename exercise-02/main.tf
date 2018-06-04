/**
 * Datasource pour connaitre l'id de la dernière Debian Stretch
 */
data "aws_ami" "debian" {
  most_recent = true

  filter {
    name   = "name"
    values = ["debian-stretch-hvm-x86_64-gp2*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["379101102735"] # Debian Project
}

resource "aws_key_pair" "keypair" {
  key_name_prefix = "training-"
  public_key      = "${file(var.public_key_path)}"
}

resource "aws_security_group" "allow_all" {
  name_prefix = "tf-train"

  description = "Allow all inbound traffic"
  vpc_id      = "${data.aws_vpc.training.id}"

  tags = {
    Name = "${var.security_group_name}"
  }
}

/**
 * TODO: Ecrire une datasource de type aws_vpc, nommé 'training' avec le cidr de la formation (10.55.0.0/16)
 */


#
# TODO: Ecrire une ressource de type aws_security_group_rule, liée au security_group nommé allow_all
# Elle doit être de type ingress et autoriser tous les ports, tous les protocoles,
# et toutes les ip d'origine en entrée.
# Hints:
#   https://www.terraform.io/docs/providers/aws/r/security_group_rule.html
#


#
# TODO: Ecrire une ressource de type aws_security_group_rule, liée au security_group nommé allow_all
# Elle doit être de type egress et autoriser tous les ports, tous les protocoles, et toutes les ip de destination
# Hints:
#   https://www.terraform.io/docs/providers/aws/r/security_group_rule.html
#


#
# TODO: Créer une ressource aws_instance en piochant certaines valeurs d'attribut dans variables.tf
# Le security_group doit être celui pour lequel ous avez créé des règles.
# Le script de démarrage doit être le suivant :
#
#  user_data = <<EOF
#  #cloud-config
#  runcmd:
#    - apt update
#    - apt install apache2 -y
#    - curl http://169.254.169.254/latest/meta-data/instance-id > /var/www/html/index.html
#    - service start apache2
#  EOF
#

#
# TODO: Créer un output nommé "ip" qui référence l'attribut public_ip de la ressource aws_instance
#