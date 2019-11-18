#hcl1

* Écrire une datasource de type aws_vpc, nommé 'training' avec le cidr de la formation (10.55.0.0/16)

* Écrire une ressource de type aws_security_group_rule, liée au security_group nommé allow_all
Elle doit être de type ingress et autoriser tous les ports, tous les protocoles,
et toutes les ip d'origine en entrée.
Hints:
* https://www.terraform.io/docs/providers/aws/r/security_group_rule.html

* Écrire une ressource de type aws_security_group_rule, liée au security_group nommé allow_all
Elle doit être de type egress et autoriser tous les ports, tous les protocoles, et toutes les ip de destination
Hints:
* https://www.terraform.io/docs/providers/aws/r/security_group_rule.html


* Créer une ressource aws_instance en piochant certaines valeurs d'attribut dans variables.tf
Le security_group doit être celui pour lequel ous avez créé des règles.
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
* Créer un output nommé "ip" qui référence l'attribut public_ip de la ressource aws_instance
