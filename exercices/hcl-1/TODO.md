# Exercice : Syntaxe HCL

* Écrire une datasource de type `aws_vpc`, nommée `training` avec un filtre portant sur le cidr de la formation (10.55.0.0/16).

* Écrire une datasource de type `aws_subnet`, nommée `training` avec un filtre portant sur l'attribut `id` de `data.aws_vpc.training`.

* Écrire une ressource de type `aws_security_group_rule`, liée à la ressource `aws_security_group.allow_all`.
Elle doit être de type `ingress` et autoriser tous les ports, tous les protocoles, et toutes les ip d'origine en entrée.
  * Aide : https://www.terraform.io/docs/providers/aws/r/security_group_rule.html

* Écrire une ressource de type `aws_security_group_rule`, liée à la ressource `aws_security_group.allow_all`.
Elle doit être de type `egress` et autoriser tous les ports, tous les protocoles, et toutes les ip de destination.
  * Aide : https://www.terraform.io/docs/providers/aws/r/security_group_rule.html


* Créer une ressource de type `aws_instance` en vous appuyant sur les variables pré-définies dans `variables.tf`.
L'attribut `vpc_security_group_ids` doit être une liste contenant l'id de `aws_security_group.allow_all`.
Le script de démarrage doit être le suivant :
```
user_data = <<EOF
 #cloud-config
 runcmd:
   - apt update
   - apt install apache2 -y
   - curl http://169.254.169.254/latest/meta-data/instance-id > /var/www/html/index.html
   - service start apache2
EOF
```

* Créer un output nommé `ip` qui référence l'attribut `public_ip` de votre ressource `aws_instance`
