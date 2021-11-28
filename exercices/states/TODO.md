# Exercice : States

Utiliser `terraform show`

## Move

* Copier dans `main.tf` le code de la clef TLS de l'exercice `hcl-1`.
* Lancer `terraform plan`
* Utiliser `terraform mv` pour déplacer la ressource `tls_private_key.key` du state de l'exercice `hcl-1` à un fichier `terraform.tfstate` dans ce répertoire
* Lancer `terraform plan`

Que constatez-vous entre les 2 outputs de `terraform plan` ?

* Faire la manipulation inverse et rendre la ressource `tls_private_key.key` à son state original.

## Taint

Dans le répertoire de l'exercice `hcl-1` :

* Utiliser `terraform taint` et `terraform apply` pour forcer la recréation de la resource `tls_private_key.key`
