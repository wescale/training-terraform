# Exercice : States

Utiliser `terraform show`

## Move

* Copier dans `main.tf` ici le code du security group `aws_security_group.allow_all` de l'exercice `hcl-1`.
* Lancer `terraform plan`
* Utiliser `terraform mv` pour déplacer la ressource `aws_security_group.allow_all` du state de l'exercice `hcl-1` à un fichier `terraform.tfstate` dans ce répertoire
* Lancer `terraform plan`

Que constatez-vous entre les 2 outputs de `terraform plan` ?

* Faire la manipulation inverse et rendre la ressource `aws_security_group.allow_all` à son state original.

## Taint

Dans le répertoire de l'exercice `hcl-1` :

* Utiliser `terraform taint` et `terraform apply` pour forcer la recréation des ressources `aws_security_group_rule`
