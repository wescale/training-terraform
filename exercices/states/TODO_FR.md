# Exercice : States

Utiliser `terraform show`

## Move

* Lancer `terraform apply`
* Renommer la ressource et lancer `terraform plan`
* Ecrire un bloc `moved` pour renommer la ressource encore une fois et lancer `terraform apply`
* Renommer encore une fois la ressource
* Utiliser `terraform state mv` pour renommer la ressource
* Lancer `terraform plan`

## Taint

* Utiliser `terraform taint` et `terraform apply` pour forcer la recréation de la resource `tls_private_key.key`
